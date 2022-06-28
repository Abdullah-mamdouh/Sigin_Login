
import 'package:flutter/material.dart';

class Lable extends StatelessWidget {
  Lable({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: 15,color: Colors.black38),);
  }
}
