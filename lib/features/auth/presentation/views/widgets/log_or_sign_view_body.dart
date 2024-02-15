import 'package:flutter/material.dart';

class LogOrSignViewBody extends StatelessWidget {
  const LogOrSignViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 119),
        child: Column(children: [
          Image.asset('assests/images/logo.png'),
          const SizedBox(height: 94,),
          const Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              color: Color(0xff676767)
            ),
          ),
          const SizedBox(height: 13,),
          const Text(
            'it’s easier to sign up now',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xff676767)
            ),
          )

        ]),
      ),
    );
  }
}
