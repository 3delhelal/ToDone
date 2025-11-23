import 'package:flutter/material.dart';
import '/features/home/presentation/ui/widgets/home_floating_button.dart';
import '/features/home/presentation/ui/widgets/home_body.dart';
import '/features/home/presentation/ui/widgets/home_navigation_bar.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(tabController: _tabController),
      body: HomeBody(tabController: _tabController),
      floatingActionButton: HomeFloatingButton(),
      bottomNavigationBar: HomeNavigationBar(),
    );
  }
}
