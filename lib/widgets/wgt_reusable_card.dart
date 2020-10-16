import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color1, this.cardChild, this.onPress1});

  final Color color1;
  final Widget cardChild;
  final Function onPress1; // function as attribute
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress1,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color1, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

// Use Case Example:
/*
body: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: <Widget>[
Expanded(
child: Row(
children: [
Expanded(
child: ReusableCard(    // <---------------
onPress1: () {
setState(() {
selectedGender = Gender.male;
});
},
color1: selectedGender == Gender.male
? kACTIVE_CARDS_COLOR
    : kINACTIVE_CARDS_COLOR,
cardChild: IconContent(
icon: FontAwesomeIcons.mars,
label: 'MALE',
),
),
),
Expanded(
child: ReusableCard( // <---------------
onPress1: () {
setState(() {
selectedGender = Gender.female;
});
},
color1: selectedGender == Gender.female
? kACTIVE_CARDS_COLOR
    : kINACTIVE_CARDS_COLOR,
cardChild: IconContent(
icon: FontAwesomeIcons.venus,
label: 'FEMALE',
),
),
)
],
)),*/
