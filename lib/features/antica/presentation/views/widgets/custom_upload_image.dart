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

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
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
                        Icon(Icons.cloud_upload_outlined,color: borderFormColor,),
                        SizedBox(width: 4,),
                        Text('Upload Product Image',style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          fontFamily: poppinsBlackFont,
                          color: borderFormColor
                        ),)
                      ],
                    ),
                  
                ),
              
              ),
             const SizedBox(height: 10,),
              Container(
                child: image == null
                ? const Text('No image selected.')
                : Image.file(image!,height: 100,width: 100,),
              )
              
      ],
    );
  }
}
