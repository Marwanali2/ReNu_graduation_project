import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/recycling/presentation/views/widgets/cleaner_materials_view_body.dart';
import 'package:graduation_project/features/recycling/presentation/views/widgets/electronics_view_body.dart';
import 'package:graduation_project/features/recycling/presentation/views/widgets/houseware_view_body.dart';

class RewardsViewBody extends StatefulWidget {
  const RewardsViewBody({super.key});

  @override
  State<RewardsViewBody> createState() => _RewardsViewBodyState();
}

class _RewardsViewBodyState extends State<RewardsViewBody> with SingleTickerProviderStateMixin {
  late TabController tabController;
@override
  void initState() {
    super.initState();
    tabController = TabController(length: 3,vsync:this );
  }
  @override
void dispose() {
   tabController.dispose();
   super.dispose();
 }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30),
      child: Column(
        children: [
          Container(
            height:46,
            width: 320,
            decoration: BoxDecoration(
              color:const Color(0xffD8EFDB),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Image.asset('assests/images/Coinreward.png'),
                ),
               
              const  Text('Available points: ',style:Styles.textStyle15 ,),
               const Text('1500 Points',style: Styles.textStyle15,)
              ],
            ),
          ),
          TabBar(
            controller: tabController,
            isScrollable: true,
            tabs: [
              
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    color: borderFormColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height:44,
                  child: Row(
                    children: [
                      Image.asset('assests/images/Cleaner.png'),
                     const Text('Cleaner materials',)
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    color: borderFormColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height:44,
                  child: Row(
                    children: [
                      Image.asset('assests/images/Sweep.png'),
                      const Text('HouseWare',)
                    ],
                  ),
                ),
              ),
Tab(
                child: Container(
                  decoration: BoxDecoration(
                    color: borderFormColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height:44,
                  child: Row(
                    children: [
                      Image.asset('assests/images/Vacuum.png'),
                     const Text('Electronics',)
                    ],
                  ),
                ),
              ),

            ]),
 Expanded(
           child:  TabBarView(
            
            controller: tabController,
            children:const [
              CleanerMaterialViewBody(),
              HouseWareViewBody(),
              ElectronicsViewBody(),
                 ],
           )),


        ],
      ),
    );
  }
}