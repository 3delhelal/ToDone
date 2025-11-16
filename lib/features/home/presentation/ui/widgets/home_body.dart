import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/features/manage_task/presentation/ui/manage_task_screen.dart';
import '/features/home/presentation/ui/widgets/task_card/deleted_task_card.dart';
import '/core/constants/app_constants.dart';
import '/features/home/presentation/ui/widgets/task_card/task_card.dart';
import '/core/resources/colors_manager.dart';
import '/core/helpers/extensions/context_extensions.dart';
import '../../../domain/entities/task.dart';
import '../../controller/tasks_cubit.dart';

class HomeBody extends StatelessWidget {
  final TabController tabController;

  final GlobalKey<AnimatedListState> _doneListKey =
      GlobalKey<AnimatedListState>();
  final GlobalKey<AnimatedListState> _unDoneListKey =
      GlobalKey<AnimatedListState>();

  HomeBody({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        if (state.status == TasksStateStatus.loading) {
          return Center(child: CircularProgressIndicator());
        } else if (state.status == TasksStateStatus.error) {
          return Center(child: Text(context.localize.somethingWentWrong));
        }
        return TabBarView(
          controller: tabController,
          children: [
            _buildTaskList(state.unDoneTasks, context, _doneListKey),
            _buildTaskList(state.doneTasks, context, _unDoneListKey),
          ],
        );
      },
    );
  }
}

Widget _buildTaskList(
  List<Task> tasksList,
  BuildContext context,
  GlobalKey<AnimatedListState> listkey,
) {
  var tasksCubit = context.read<TasksCubit>();

  if (tasksList.isEmpty) {
    return Center(
      child: Text(
        context.localize.noTasksHere,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  return AnimatedList(
    padding: const EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 75),
    key: listkey,
    initialItemCount: tasksList.length,
    itemBuilder: (context, index, animation) {
      return TaskCard(
        task: tasksList[index],
        onToggleDone: () {
          listkey.currentState!.removeItem(index, (context, animation) {
            var copy = tasksList[index].copyWith(done: !tasksList[index].done);
            // To change the card background color, based on task state.
            bool isDone = copy.done;
            return DeletableTaskCard(
              task: copy,
              animation: animation,
              backgroundColor: isDone
                  ? ColorsManager.deletedCardBackDonegroundColor
                  : ColorsManager.deletedCardUnDoneBackgroundColor,
            );
          }, duration: AppConstants.animationDuration);
          if (tasksList.length - 1 != index) {
            // Check if the item is the last in the list.
            tasksCubit.editTask(
              tasksList[index].copyWith(done: !tasksList[index].done),
            );
          } else {
            // To show removing animation first before emptying the list.
            Future.delayed(AppConstants.animationDuration, () {
              tasksCubit.editTask(
                tasksList[index].copyWith(done: !tasksList[index].done),
              );
            });
          }
        },
        onDelete: () {
          listkey.currentState!.removeItem(index, (context, animation) {
            return DeletableTaskCard(
              task: tasksList[index],
              animation: animation,
              backgroundColor: ColorsManager.deletedCardDeleteBackgroundColor,
            );
          }, duration: AppConstants.animationDuration);

          if (tasksList.length - 1 != index) {
            // Check if the item is the last in the list.
            tasksCubit.deleteTask(tasksList[index].id);
          } else {
            // To show removing animation first before emptying the list.
            Future.delayed(AppConstants.animationDuration, () {
              tasksCubit.deleteTask(tasksList[index].id);
            });
          }
        },

        onEdit: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ManageTaskScreen(task: tasksList[index]),
            ),
          );
        },
      );
    },
  );
}
