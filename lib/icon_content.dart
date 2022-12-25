import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.widgetText, required this.icon});

  final String widgetText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        SizedBox(height: 15),
        Text(
          widgetText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
