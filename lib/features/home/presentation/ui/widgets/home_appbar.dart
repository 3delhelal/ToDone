import 'package:flutter/material.dart';
import '/core/extensions/context_extensions.dart';
import '/core/resources/colors_manager.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;
  const HomeAppbar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        context.localize.tasksList,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: context.theme.appBarTheme.foregroundColor,
        ),
      ),
      bottom: TabBar(
        labelStyle: Theme.of(context).textTheme.titleSmall,
        controller: tabController,
        labelColor: ColorsManager.blueAccent,
        unselectedLabelColor: ColorsManager.meduimGrey,
        indicatorColor: ColorsManager.blueAccent,
        tabs: [
          SizedBox(
            width: double.infinity,
            child: Tab(text: context.localize.unDone),
          ),
          SizedBox(
            width: double.infinity,
            child: Tab(text: context.localize.done),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 48);
}
