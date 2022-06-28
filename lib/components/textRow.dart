
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sign_login_screen/constant/constantColors.dart';

class TextRow extends StatefulWidget {
  TextRow({Key? key,required this.text, required this.textButton, required this.nextpage}) : super(key: key);

  String text;
  String textButton;
  Widget nextpage;
  @override
  State<TextRow> createState() => _TextRowState();
}

class _TextRowState extends State<TextRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.text),
          MaterialButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      child: widget.nextpage, type: PageTransitionType.leftToRight));
            },
            child: Text(
              widget.textButton,
              style: TextStyle(
                color: blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
