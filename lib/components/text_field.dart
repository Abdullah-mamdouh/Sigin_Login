
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField({Key? key,@required this.controller,@required this.hintText,this.icon}) : super(key: key);
  final TextEditingController ? controller;
  String ? hintText ;
  IconData? icon ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: controller,
      style: TextStyle(fontSize: 15.0, color: Colors.black),

      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
            top: 10, bottom: 10, left: 15, right: 15),

        hintText: '${hintText}',
        hintStyle: TextStyle(
          color: Colors.black26,
        ),
        //fillColor: Colors.white,
        //label: Text('sbxcn jm',style: TextStyle(color: Colors.white),),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:
          BorderSide(width: 1, color: Colors.black),
        ),
      ),
    ) ;
  }
}
