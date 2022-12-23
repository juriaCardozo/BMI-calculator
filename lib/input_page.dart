import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColor;
  Color femaleCardColour = inactiveCardColor;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(children: [
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                colour: selectedGender == Gender.male
                    ? activeCardColour
                    : inactiveCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.mars,
                  widgetText: 'MALE',
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                colour: selectedGender == Gender.female
                    ? activeCardColour
                    : inactiveCardColor,
                cardChild: IconContent(
                  widgetText: 'FEMALE',
                  icon: FontAwesomeIcons.venus,
                ),
              ),
            ),
          ]),
        ),
        Expanded(
          child: ReusableCard(
              colour: activeCardColour,
              cardChild: Column(
                children: [Text('HEIGHT')],
              )),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              child: ReusableCard(colour: activeCardColour),
            ),
            Expanded(
              child: ReusableCard(colour: activeCardColour),
            ),
          ]),
        ),
        Container(
          color: bottomContainerColour,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: bottomContainerHeight,
        ),
      ]),
    );
  }
}
