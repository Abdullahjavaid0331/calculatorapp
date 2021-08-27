import 'package:flutter/material.dart';

class ReuseAbleCode extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;

  const ReuseAbleCode({Key? key, required this.colour, this.cardChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
