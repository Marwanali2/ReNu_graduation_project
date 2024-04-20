import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/core/theme/colors.dart';
import 'package:image_picker/image_picker.dart';

class CustomUploadImage extends StatefulWidget {
  const CustomUploadImage({super.key});

  @override
  State<CustomUploadImage> createState() => _CustomUploadImageState();
}

class _CustomUploadImageState extends State<CustomUploadImage> {

File? image;
Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
if(image == null) return;
final imageTemp = File(image.path);
setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: (){
              pickImage();
            },
            child:Container(
                height: 74,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: borderFormColor
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                child:const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cloud_upload_outlined),
                    SizedBox(width: 4,),
                    Text('Upload Product Image',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      fontFamily: poppinsBlackFont,
                      color: Color(0xff313131)
                    ),)
                  ],
                ),
              
            ),
          );
  }
}
