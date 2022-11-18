import 'package:flutter/material.dart';
import 'package:allsolz_tictactoe_game/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CustomButton(onTap: () {}, text: 'Create Room'),
        const SizedBox(height: 20),
        CustomButton(onTap: () {}, text: 'Join Room'),
      ]),
    );
  }
}
