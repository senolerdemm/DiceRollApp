import 'package:flutter/material.dart';
import "dart:math";

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/roll1.png';
  var randomNumber = Random().nextInt(max(6, 1)) + 1;
  void rolldice() {
    setState(() {
      randomNumber = Random().nextInt(max(6, 1)) + 1;
      activeDiceImage = 'assets/images/roll$randomNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(image: AssetImage(activeDiceImage), width: 200),
        const SizedBox(height: 20),
        TextButton(onPressed: rolldice, child: const Text('Roll Dice')),
        const SizedBox(height: 20),
      ],
    );
  }
}
