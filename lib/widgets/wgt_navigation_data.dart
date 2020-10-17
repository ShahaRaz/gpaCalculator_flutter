import 'package:flutter/material.dart';
import 'package:gpa_israel/constant_views.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Widget_NavigationData extends StatelessWidget {
  final String firstRow;
  final String secondRow;
  final Function myOnPress;

  Widget_NavigationData({this.firstRow, this.secondRow, this.myOnPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        myOnPress();
      },
      title: AutoSizeText(
        firstRow,
        minFontSize: 20,
        maxFontSize: 25,
        style: kTXTSTYLE_BLACK20_BOLD, // todo - later export
      ),
      trailing: AutoSizeText(
        secondRow,
        minFontSize: 15,
        maxFontSize: 20,
        style: kTXTSTYLE_BLACK20_BOLD, // todo - later export
      ),
    );
  }
}
