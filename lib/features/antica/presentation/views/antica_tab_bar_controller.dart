import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/antica_view_body1.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/big_antica_view_body2.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/catigories_view_body.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/custom_title_antica_bar.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/favorites_view_body.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/sell_view_body.dart';
class AnticaTabBar extends StatefulWidget {
  const AnticaTabBar({super.key,});

  @override
  State<AnticaTabBar> createState() => _AnticaTabBarState();
}

class _AnticaTabBarState extends State<AnticaTabBar> with SingleTickerProviderStateMixin {
    late TabController tabController;
@override
  void initState() {
    super.initState();
    tabController = TabController(length: 4,vsync:this );
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
          padding:const EdgeInsets.only(top: 35,),
          height: MediaQuery.of(context).size.height,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 20),
                 child: CustomTitleAnticaBar(),
               ),
                   const SizedBox(height: 30,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: Text('Create New Post',style: Styles.textStyle16.copyWith(color: blackcolor,fontFamily: poppinsBlackFont),),
                   ),
                   const SizedBox(height: 30,),
          TabBar(
        labelPadding: EdgeInsets.zero, 
        indicatorPadding:const EdgeInsets.only(top:23),
        indicator:const BoxDecoration(
          shape: BoxShape.circle,
        ),           
            labelStyle:Styles.textStyle12.copyWith(color: blackcolor),
            unselectedLabelStyle: Styles.textStyle12.copyWith(fontWeight: FontWeight.w400),
          controller:tabController,
          tabs:const[
                  Tab(text:'Buy Now'),
                  Tab(text:'Favorites'),
                  Tab(text:'Categories'),
                  Tab(text:'Sell'),            
                  ],
                  
          ),
                    Expanded(
           child:  TabBarView(
            controller: tabController,
            children:const [
              BuyNowViewBody2(),
            FavoritesViewBody(),  
            CatigoriesViewBody(), 
             SellViewBody() 
                 ],
          
            
            
           
                   ),
                   )])),
       );
  }
}
