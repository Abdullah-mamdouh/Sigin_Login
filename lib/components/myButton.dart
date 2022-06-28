
import 'package:flutter/material.dart';

import '../constant/constantColors.dart';

class Button extends StatelessWidget {
  Button({Key? key,required this.text,required this.onPressed,this.color}) : super(key: key);
  String text ;
  Color? color;
  VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return GestureDetector(
      child: Container(
          width: w,
          height: 45,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8)),
          child: Center(child: Text(text,style: TextStyle(color: white,fontWeight: FontWeight.bold),))),
      onTap: onPressed,
    );
  }

}