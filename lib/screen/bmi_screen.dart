import 'package:calculatorapp/screen/model/Enum.dart';
import 'package:calculatorapp/screen/widget/icon_dart.dart';
import 'package:calculatorapp/screen/widget/resuable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111128);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Color maleInActiveColor = inactiveCardColor;
  Color femaleInActiveColor = inactiveCardColor;
  // bool activeColor = true;
  GenderType typeSelected = GenderType.male;
  void activeCheck(GenderType genderName) {
    if (genderName == GenderType.male) {
      if (maleInActiveColor == inactiveCardColor) {
        maleInActiveColor = activeCardColor;
        femaleInActiveColor = inactiveCardColor;
      }
    }
    if (genderName == GenderType.female &&
        femaleInActiveColor == inactiveCardColor) {
      femaleInActiveColor = activeCardColor;
      maleInActiveColor = inactiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      typeSelected = GenderType.male;
                      // activeCheck(GenderType.male);
                    });
                  },
                  child: ReuseAbleCode(
                    colour: typeSelected == GenderType.male
                        ? maleInActiveColor = activeCardColor
                        : femaleInActiveColor = inactiveCardColor,
                    cardChild: IconContent(
                        genderName: "Male", genderIcon: FontAwesomeIcons.mars),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      typeSelected = GenderType.female;
                      // activeColor = false;
                      // activeCheck(GenderType.female);
                    });
                  },
                  child: ReuseAbleCode(
                    colour: typeSelected == GenderType.female
                        ? femaleInActiveColor = activeCardColor
                        : maleInActiveColor = inactiveCardColor,
                    cardChild: IconContent(
                        genderName: "Female",
                        genderIcon: FontAwesomeIcons.venus),
                  ),
                ))
              ],
            ),
          ),
          const Expanded(child: ReuseAbleCode(colour: activeCardColor)),
          Expanded(
            child: Row(
              children: const [
                Expanded(child: ReuseAbleCode(colour: activeCardColor)),
                Expanded(child: ReuseAbleCode(colour: activeCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
