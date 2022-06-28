
import 'package:flutter/material.dart';
import 'package:sign_login_screen/components/lable.dart';
import 'package:sign_login_screen/components/myButton.dart';
import 'package:sign_login_screen/components/outLine_button.dart';
import 'package:sign_login_screen/components/phone_number.dart';
import 'package:sign_login_screen/components/titleRow.dart';
import 'package:sign_login_screen/constant/constantColors.dart';
import 'package:sign_login_screen/screens/register.dart';

import '../components/textRow.dart';
import '../constant/style.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key,}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height:h*0.4,
                child: Image.asset('images/login.png',fit: BoxFit.cover,),
            ),
            Container(
              padding: EdgeInsets.only(right: 30,left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                    child: Lable(text: 'Welcome to Fashion Daily'),
                  ),
                  TitleRow(title: 'Sign in'),

                  Padding(
                    padding: const EdgeInsets.only(top: 12.0,bottom: 5),
                    child: Lable(text: 'Phone Number',),
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 18),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),borderRadius: BorderRadius.circular(5)
                      ),child: Flag_PhoneNumber()),
                  Button(text: 'Sign In',color: baseBlue, onPressed: (){}),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0,bottom: 15.0),
                    child: Center(child: Text('Or',style: TextStyle(fontSize: 15,),)),
                  ),
                  MyOutLineButton(),
                  TextRow(text: "Doesn't have an account?", textButton: 'Register here',nextpage: Register()),
                  Text('use the application according to policty rules. '
                      'Any kinds of violations will be subject to sanctions.',textAlign: TextAlign.center,style: TextStyle(color:Colors.black26,fontSize: 12),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
