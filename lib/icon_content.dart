import 'package:flutter/material.dart';

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
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
