
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:sign_login_screen/components/text_field.dart';
import 'package:sign_login_screen/screens/signIn.dart';

import '../components/lable.dart';
import '../components/myButton.dart';
import '../components/outLine_button.dart';
import '../components/phone_number.dart';
import '../components/textRow.dart';
import '../components/titleRow.dart';
import '../constant/constantColors.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final emailController =  TextEditingController();
  final passwordController =  TextEditingController();

  var onValuePicked;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(left:10,top: 25,child: CircleAvatar(
                      backgroundColor:Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios,color: white,),
                          onPressed: () {
                            Navigator.pop(context);
                          },),
                      ))),
                  Container(
                    height:h*0.2,
                    width: double.infinity,
                    child: Image.asset('images/login.png',fit: BoxFit.fill,),
                  ),
                ],
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
                    TitleRow(title: 'Register'),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0,bottom: 5),
                      child: Lable(text: 'Email',),
                    ),
                    MyTextField(controller: emailController, hintText: 'Eg. example@gmail.com'),

                    Padding(
                      padding: const EdgeInsets.only(top: 12.0,bottom: 5),
                      child: Lable(text: 'Phone Number',),
                    ),

                    Container(
                        margin: EdgeInsets.only(bottom: 18),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26),borderRadius: BorderRadius.circular(8)
                        ),child: Flag_PhoneNumber()),
                    Lable(text: 'Password',),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0,bottom: 20.0),
                      child: MyTextField(controller: passwordController, hintText: 'Password'),
                    ),
                    Button(text: 'Register',color: baseBlue, onPressed: (){}),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0,bottom: 15.0),
                      child: Center(child: Text('Or',style: TextStyle(fontSize: 15,),)),
                    ),
                    MyOutLineButton(),
                    TextRow(text: "Have any account?", textButton: 'Sign in here',nextpage: SignIn()),
                    Text('use the application according to policty rules. Any kinds ',
                      textAlign: TextAlign.center,style: TextStyle(color:Colors.black26,fontSize: 12),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text('term and condition',style: TextStyle(color:blue,fontSize: 12),)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}