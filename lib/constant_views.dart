import 'package:flutter/material.dart';




// Fonts: ______________________________________________Start
const TextStyle kTXTSTYLE_WHITE50_BOLD =
    TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w700);

const TextStyle kTXTSTYLE_LBLUE30_BOLD = TextStyle(
    color: Colors.lightBlueAccent, fontSize: 30.0, fontWeight: FontWeight.w700);

const TextStyle kTXTSTYLE_BLACK20_BOLD = TextStyle(
    color: Color(0xFF000000), fontSize: 20, fontWeight: FontWeight.bold);

const TextStyle kTXTSTYLE_BIGGEST =
    TextStyle(fontSize: 50, fontWeight: FontWeight.w900);

const TextStyle kTXTSTYLE_WHITE_SUBTEXT =
    TextStyle(color: Colors.white, fontSize: 18);

/*//Example:
Text(
age.toString(),
style: kTXTSTYLE_BIGGEST,
),*/

// Fonts: ______________________________________________End

// Colors: _____________________________________________Start
const Color kACTIVE_CARDS_COLOR = Color(0xFF1D1E33);
const Color kINACTIVE_CARDS_COLOR = Color(0xFF111328);
/*//Example:
 child: ReusableCard(
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
              ],*/
// Colors: _____________________________________________End

// Widget's properties: ________________________________Start
const double kBUTTON_CONTAINER_HEIGHT = 80;
/*//Example:
child: Container(
child: Center(
child: Text(
buttonTitle,
style: kTXTSTYLE_LARGE,
),
),
color: kBOTTOM_CONTAINER_COLOR,
margin: EdgeInsets.only(top: 10.0),
padding: EdgeInsets.only(bottom: 20.0),
width: double.infinity,
height: kBUTTON_CONTAINER_HEIGHT,<-----------
),*/
// Widget's properties: ________________________________End
