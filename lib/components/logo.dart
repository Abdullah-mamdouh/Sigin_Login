
import 'package:flutter/material.dart';

import '../constant/constantColors.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('7',style: TextStyle(
              color: secandryColor2,fontSize: 28,fontWeight: FontWeight.bold
          ),),
          Text('Krava',style: TextStyle(
              color: Colors.teal[300],fontSize: 28,fontWeight: FontWeight.bold
          ),)
        ],),

    );
  }
}
