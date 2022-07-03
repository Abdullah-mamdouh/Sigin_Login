
import 'package:flutter/material.dart';
import 'package:sign_login_screen/model/banner.dart';

import '../constant/style.dart';

class MyPageView extends StatefulWidget {
  MyPageView({Key? key,required this.banner}) : super(key: key);
  AppBanner banner;
  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Center(
          child: Image(
            image: AssetImage(
             widget.banner.image,
              // 'images/im.png',
            ),
            height: 300.0,
            width: 300.0,
          ),
        ),
        SizedBox(height: 10.0),
        Center(
          child: Container(
            width: double.infinity,
            child: Text(
              widget.banner.title,
              //'Get Food Delivary to your doorstep asap',
              textAlign: TextAlign.center,style: kTitleStyle,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          widget.banner.description,
          //'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
          textAlign: TextAlign.center,style: kSubtitleStyle,
        ),
      ],
    );
  }
}
