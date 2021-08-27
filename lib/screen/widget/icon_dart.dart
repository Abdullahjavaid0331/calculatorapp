import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String genderName;
  final IconData genderIcon;

  const IconContent(
      {Key? key, required this.genderName, required this.genderIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const labelTextStyle = TextStyle(color: Colors.white, fontSize: 18);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          genderName,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
