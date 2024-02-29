import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/core/helpers/constants.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/custom_upload_image.dart';
import 'package:image_picker/image_picker.dart';

class SellViewBody extends StatefulWidget {
  const SellViewBody({super.key});

  @override
  State<SellViewBody> createState() => _SellViewBodyState();
}

class _SellViewBodyState extends State<SellViewBody> {


  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(top: 25),
      child: Column(
        children:[
          CustomUploadImage(),
        ]
        
        ),
    );
  }
}

