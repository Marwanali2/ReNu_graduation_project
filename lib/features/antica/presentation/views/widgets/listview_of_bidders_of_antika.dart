import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/core/theme/styles.dart';

class BiddersOfAntikaListView extends StatefulWidget {
  const BiddersOfAntikaListView({super.key});

  @override
  State<BiddersOfAntikaListView> createState() => _BiddersOfAntikaListViewState();
}

class _BiddersOfAntikaListViewState extends State<BiddersOfAntikaListView> {
List<Map<String,String>> bidders=[
  {
  'image':'assests/images/Ellipse199.png',
  'name':'Messi',
  'time':'1h 34m ago',
  'price':'220 EGP'
  },
  {
  'image':'assests/images/Ellipse19.png',
  'name':'Asmaa',
  'time':'2h 34m ago',
  'price':'225 EGP'

  },
  {
  'image':'assests/images/Ellipse199.png',
  'name':'ronaldo',
  'time':'1h 30m ago',
  'price':'230 EGP'

  },
  {
  'image':'assests/images/Ellipse199.png',
  'name':'mapabi',
  'time':'1h 20m ago',
  'price':'235 EGP'

  },
];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount:bidders.length ,
            itemBuilder: (context,index){
              return SizedBox(
                height: 59,
                child: Row(
                  children: [ 
                    Image.asset(bidders[index]['image']!),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        
                          Text(bidders[index]['name']!,style: Styles.textStyle13.copyWith(
                            color:blackcolor,
                            fontWeight: FontWeight.w500,
                            fontFamily: poppinsBlackFont
                          ),),
                          Text(bidders[index]['time']!,style:const TextStyle(
                            fontSize: 10,
                            color: Color(0xff616161
                ),
                            fontWeight: FontWeight.w500,
                            fontFamily: poppinsBlackFont
                          ),)
                        ],
                      ),
                    ),
                      
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Text(bidders[index]['price']!,style: Styles.textStyle13.copyWith(
                        color: borderFormColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: poppinsBlackFont
                        
                      ),),
                    )
                  ],
                ),
              );
            }
            
      ),
    );
  }
}