import 'package:flutter/material.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/drawer/app_drawer.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const AppDrawer(),
        body: const HomeViewBody(),
      ),
    );
  }
}
