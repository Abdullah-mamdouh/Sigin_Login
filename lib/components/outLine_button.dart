
import 'package:flutter/material.dart';

class MyOutLineButton extends StatelessWidget {
  const MyOutLineButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 45,
      child: OutlinedButton(
        onPressed: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/google.png',height: 20,width: 20,),
            const SizedBox(width: 8,),
            Text('Sign with by google'),
          ],),),
    );
  }
}
