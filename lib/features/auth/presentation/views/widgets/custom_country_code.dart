import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CodeCountry extends StatelessWidget {
  const CodeCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: const Color(0xffD8DADC))),
      height: 56,
      width: 110,
      child: const CountryCodePicker(
        initialSelection: 'IT',
        favorite: ['+39', 'FR'],
        // optional. Shows only country name and flag
        showCountryOnly: false,
        // optional. Shows only country name and flag when popup is closed.
        showOnlyCountryWhenClosed: false,
        // optional. aligns the flag and the Text left
        alignLeft: false,
      ),
    );
  }
}
