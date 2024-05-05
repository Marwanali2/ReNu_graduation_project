import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/styles.dart';

class RewardsViewBody extends StatelessWidget {
  const RewardsViewBody({super.key});

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
          )
        ],
      ),
    );
  }
}