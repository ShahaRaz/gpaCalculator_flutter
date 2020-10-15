import 'package:flutter/material.dart';
import 'package:gpa_israel/constant_views.dart';

class CircleWithTitle extends StatelessWidget {
  /* NOTE!___________
  * class will present either the icon, or the inputText
  * if provided icon, class will ignore the inputText & inputStyle
  * */
  final IconData inputIcon; //
  final String inputText;
  final TextStyle inputStyle;
  final String headLine;

  CircleWithTitle(
      {this.inputIcon,
      this.inputText,
      this.inputStyle,
      @required this.headLine});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(headLine, style: kTXTSTYLE_WHITE_SUBTEXT),
      SizedBox(height: 5),
      CircleAvatar(
        child: chooseCenterWidget(),
        backgroundColor: Colors.white,
        radius: 30.0,
      ),
    ]);
  }

  Widget chooseCenterWidget() {
    if (inputIcon == null) // text , not icon
      return Text(inputText, style: inputStyle);
    else {
      return Icon(
        inputIcon,
        size: 30.0,
        color: Colors.lightBlueAccent,
      );
    }
  }
}
