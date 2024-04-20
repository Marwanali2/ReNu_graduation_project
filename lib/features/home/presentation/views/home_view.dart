import 'package:flutter/material.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Handle item 1 tap
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Handle item 2 tap
                },
              ),
            ],
          ),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
