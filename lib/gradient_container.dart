import 'package:flutter/material.dart';
import 'package:flutter_application_1/diceroller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.Colors});
  // ignore: non_constant_identifier_names
  final List<Color> Colors;

  void rolldice() {
    print('Rolled the dice');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: Colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),

      padding: const EdgeInsets.all(20),
      child: Center(
        child: DiceRoller(
          // ignore: prefer_const_constructors
        ),
      ),
    );
  }
}
