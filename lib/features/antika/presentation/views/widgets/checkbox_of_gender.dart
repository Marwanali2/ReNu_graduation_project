import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/styles.dart';

class CheckboxOfGender extends StatefulWidget {
  const CheckboxOfGender({super.key});

  @override
  State<CheckboxOfGender> createState() => _CheckboxOfGenderState();
}

class _CheckboxOfGenderState extends State<CheckboxOfGender> {
  bool? male = false;
  bool? female = false;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        height: 120,
        child: Column(
          children: [
            CheckboxListTile(
                title: const Text(
                  'Male',
                  style: Styles.textStyle11,
                ),
                value: male,
                onChanged: (value) {
                  setState(() {
                    male = value;
                  });
                }),
            CheckboxListTile(
                title: const Text(
                  'Female',
                  style: Styles.textStyle11,
                ),
                value: female,
                onChanged: (value) {
                  setState(() {
                    female = value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
