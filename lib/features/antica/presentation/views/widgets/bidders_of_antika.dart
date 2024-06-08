import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/bidders_bottom_sheet.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/listview_of_bidders_of_antika.dart';

class BiddersOfAntika extends StatefulWidget {
  const BiddersOfAntika({super.key});

  @override
  State<BiddersOfAntika> createState() => _BiddersOfAntikaState();
}

class _BiddersOfAntikaState extends State<BiddersOfAntika> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: const[
                  BiddersOfAntikaListView(),
  Padding(
                 padding: EdgeInsets.only(top: 630),
                 child: SingleChildScrollView(
                   child: Center(
                  child: BiddersBottomSheet()
                                 ),
                 ),
               )
      ] 
    );




              
                             

  }
}