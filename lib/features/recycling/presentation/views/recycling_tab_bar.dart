import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/core/widgets/back_icon_widget.dart';
import 'package:graduation_project/features/recycling/presentation/views/widgets/recycling_view_body.dart';
import 'package:graduation_project/features/recycling/presentation/views/widgets/rewards_view_body.dart';

class RecyclingTabBar extends StatefulWidget {
  const RecyclingTabBar({super.key});

  @override
  State<RecyclingTabBar> createState() => _RecyclingTabBarState();
}

class _RecyclingTabBarState extends State<RecyclingTabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 40,
        ),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const BackIconWidget(),
                  const SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Recycle',
                    style: Styles.textStyle16.copyWith(color: blackcolor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TabBar(
              labelPadding: EdgeInsets.zero,
              indicatorColor: borderFormColor,
              labelStyle: Styles.textStyle12.copyWith(color: borderFormColor),
              unselectedLabelStyle: Styles.textStyle12.copyWith(
                fontWeight: FontWeight.w400,
              ),
              indicatorSize: TabBarIndicatorSize.label,
              controller: tabController,
              tabs: const [
                Tab(
                  text: 'Recycling',
                ),
                Tab(
                  text: 'Rewards',
                ),
              ],
            ),
            Expanded(
                child: TabBarView(
              controller: tabController,
              children: const [
                RecyclingViewBody(),
                RewardsViewBody(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
