import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sign_login_screen/components/textRow.dart';
import 'package:sign_login_screen/constant/constantColors.dart';
import 'package:sign_login_screen/screens/signIn.dart';

import '../components/myButton.dart';
import '../components/onBoardModel.dart';
import '../constant/style.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({
    Key? key,
  }) : super(key: key);
  //final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<OnBoard> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 6.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? secandryColor2 : Colors.black26,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   stops: [0.1, 0.4, 0.7, 0.9],
              //   colors: [
              //     Color(0xFF3594DD),
              //     Color(0xFF4563DB),
              //     Color(0xFF5036D5),
              //     Color(0xFF5B16D0),
              //   ],
              // ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: MaterialButton(
                      color:secandryColor2,
                      onPressed: () => print('Skip'),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                  ),
                  Container(
                    height: 455.0,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Center(
                              child: Image(
                                image: AssetImage(
                                  'images/im.png',
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
                                  'Get Food Delivary to your doorstep asap',
                                  textAlign: TextAlign.center,style: kTitleStyle,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                              textAlign: TextAlign.center,style: kSubtitleStyle,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'images/im.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Live your life smarter\nwith us!',
                              textAlign: TextAlign.center,style: kTitleStyle,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                              textAlign: TextAlign.center,
                              style: kSubtitleStyle,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'images/im.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Get a new experience\nof imagination',
                              textAlign: TextAlign.center,style: kTitleStyle,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                              textAlign: TextAlign.center,style: kSubtitleStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  Container(padding: EdgeInsets.only(top: 20),
                      child: Button(text: 'Get Started',color: secandryColor,
                          onPressed: ()=>
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    child: SignIn(), type: PageTransitionType.leftToRight))
                  )),

                  TextRow(text: "Don't have an account?", textButton: 'Sign in',nextpage: SignIn(),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
