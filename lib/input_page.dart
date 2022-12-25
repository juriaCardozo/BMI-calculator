import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = kInactiveCardColor;
  Color femaleCardColour = kInactiveCardColor;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
                    ? kActiveCardColour
                    : kInactiveCardColor,
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
                    ? kActiveCardColour
                    : kInactiveCardColor,
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
              colour: kActiveCardColour,
              cardChild: Column(
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    children: [
                      Text(
                        '180',
                        style: kBoldTextStyle,
                      ),
                      Text('cm'),
                    ],
                  )
                ],
              )),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              child: ReusableCard(colour: kActiveCardColour),
            ),
            Expanded(
              child: ReusableCard(colour: kActiveCardColour),
            ),
          ]),
        ),
        Container(
          color: kBottomContainerColour,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: kBottomContainerHeight,
        ),
      ]),
    );
  }
}
