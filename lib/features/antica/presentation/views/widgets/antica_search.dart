import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/colors.dart';

class AnticaSearch extends StatefulWidget {
  const AnticaSearch({super.key});

  @override
  State<AnticaSearch> createState() => _AnticaSearchState();
}

class _AnticaSearchState extends State<AnticaSearch> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: true,
  
                      decoration:InputDecoration(
                        prefixIcon: Icon(Icons.search_rounded,color: borderFormColor,),

                          border: OutlineInputBorder(
                            borderSide:const BorderSide(
                              color: borderFormColor,
                            
                            ),
                            borderRadius: BorderRadius.circular(20)
                          ),
                           enabledBorder: OutlineInputBorder(
                            borderSide:const BorderSide(
                              color: borderFormColor,
                            
                            ),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:const BorderSide(
                              color: borderFormColor,
                            
                            ),
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                       );
  }
}