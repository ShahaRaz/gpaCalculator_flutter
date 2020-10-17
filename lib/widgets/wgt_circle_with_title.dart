import 'package:flutter/material.dart';
import 'package:gpa_israel/constant_views.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CircleWithTitle extends StatelessWidget {
  /* NOTE!___________
  * class will present EITHER the icon, OR the inputText
  * if provided icon, class will ignore the inputText & inputStyle
  * */
  final IconData inputIcon; //
  final String inputText;
  final TextStyle inputStyle;
  final String headLine;
  final String bottomLine;
  final Function myOnPress;

  CircleWithTitle(
      {this.inputIcon,
      this.inputText,
      this.inputStyle,
      @required this.headLine,
      @required this.bottomLine,
      this.myOnPress});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(headLine, style: kTXTSTYLE_WHITE_SUBTEXT),
      SizedBox(height: 5),
      GestureDetector(
        child: CircleAvatar(
          child: chooseCenterWidget(),
          backgroundColor: Colors.white,
          radius: 45.0,
        ),
        onTap: (myOnPress == null) ? () {} : myOnPress(), //
      ),
      SizedBox(height: 5),
      Text(bottomLine, style: kTXTSTYLE_WHITE_SUBTEXT),
    ]);
  }

  Widget chooseCenterWidget() {
    if (inputIcon == null) {
      // text , not icon
      return AutoSizeText(inputText,
          minFontSize: 14, maxFontSize: 30, maxLines: 2);
    } else {
      return Icon(
        inputIcon,
        size: 30.0,
        color: Colors.lightBlueAccent,
      );
    }
  }
}

/*AutoSizeText(
'A really long String',
style: TextStyle(fontSize: 40),
minFontSize: 10,
stepGranularity: 10,
maxLines: 4,
overflow: TextOverflow.ellipsis,
)*/
