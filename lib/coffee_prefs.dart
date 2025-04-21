import 'package:flutter/material.dart';
import 'package:flutter_application_2/styled_body_text.dart';
import 'package:flutter_application_2/styled_button.dart';

class Coffee_Prefs extends StatefulWidget {
  const Coffee_Prefs({super.key});

  @override
  State<Coffee_Prefs> createState() => _Coffee_PrefsState();
}

class _Coffee_PrefsState extends State<Coffee_Prefs> {
  int str = 1;
  int sug = 1;

  void increaseStrength() {
    setState(() {
      str = str < 5 ? str + 1 : 1;
    });
  }

  void increaseSugers() {
    setState(() {
      sug = sug < 5 ? sug + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            styledbodytext("Strength : "),
            for (int i = 0; i < str; i++)
              Image.asset(
                'assets/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: const SizedBox(width: 50)),
            styledButton(onPressed: increaseStrength, child: Text("+")),
          ],
        ),
        Row(
          children: [
            styledbodytext("Sugars : "),

            if (sug == 0) styledbodytext('No Sugars...'),

            for (int i = 0; i < sug; i++)
              Image.asset(
                'assets/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: const SizedBox(width: 50)),
            styledButton(onPressed: increaseSugers, child: Text("+")),
          ],
        ),
      ],
    );
  }
}
