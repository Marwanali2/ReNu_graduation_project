import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/current_bit_egp.dart';

class ComponentsOfBidders extends StatefulWidget {
  const ComponentsOfBidders({super.key});

  @override
  State<ComponentsOfBidders> createState() => _ComponentsOfBiddersState();
}

class _ComponentsOfBiddersState extends State<ComponentsOfBidders> {
  @override
  Widget build(BuildContext context) {
  
    return            SizedBox(
                    height: 500,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                      child: Column(
                      
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Place a bit ',style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                fontFamily: robotoFont
                              ),),
                              Row(
                                children: [
                                  Text('Time Left ',style: TextStyle(color: Colors.blueGrey),),
                                  Text(' 2h:45m:32s'),
                                ],
                              )
                            ],
                          ),
                        const  SizedBox(height: 50,),
                          SizedBox(
                            height: 56,
                            width: 320,
                            
                            child: TextFormField(
                              decoration:const InputDecoration(
                                hintText: 'Name',
                                enabledBorder:  OutlineInputBorder(
                               borderRadius: BorderRadius.all(Radius.circular(10)),
                               borderSide: BorderSide(width: 1,
                               color: borderColor
                               ),
                             ),
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.all(Radius.circular(10)),
                               borderSide: BorderSide(width: 1,
                               color: borderColor
                               ),
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.all(Radius.circular(10)),
                               borderSide: BorderSide(width: 1,
                               color: borderFormColor
                               ),
                             ),
                              
                               ) ,
                                   validator: (value) {
                                   if(value==null){
                                   return "please , enter name !";
                               }
                              },
                              
                            
                            ),
                                       
                          ),
                          const SizedBox(height: 50,),
                         const CurrentBitEgp(),
                          const SizedBox(height: 50,),
                        //  const CheckboxOfGender(),
                         const Center(child: CustomButtonPlaceBit()),
                                         ],
                      ),
                    ),
                   );
   
      

    
               
  }
}

class CustomButtonPlaceBit extends StatelessWidget {
  const CustomButtonPlaceBit({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector

    (
      onTap: (){
        GoRouter.of(context).push(AppRouter.kDetailsOfAntica);
      },
      child: Container(
        width: 126,
        height: 56,
        decoration: BoxDecoration(
          color:borderFormColor,
          borderRadius: BorderRadius.circular(30)
        ),
        child:const Center(child: Text('Place a bit ',style: TextStyle(color: whiteColor),)),
      ),
    );
  }
}