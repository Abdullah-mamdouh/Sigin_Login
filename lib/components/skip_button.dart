
import 'package:flutter/material.dart';

import '../constant/constantColors.dart';
import '../screens/signIn.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        // width: 102.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35.0),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: MaterialButton(
          color:secandryColor2,
          height: 52.0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignIn()),
            );
          },
          child: const Text(
            'Skip',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          //color: Color(0xffFBEEF2),
        ),
      ),
    );
  }
}
