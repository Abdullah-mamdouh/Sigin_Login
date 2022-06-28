
import 'package:flutter/material.dart';

import '../constant/constantColors.dart';

class TitleRow extends StatelessWidget {
  TitleRow({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
        GestureDetector(

          onTap: (){},
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Help',style: TextStyle(color: blue),),
                const SizedBox(width: 5,),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: blue,
                  child: Text('?',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }
}
