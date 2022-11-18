import 'package:flutter/material.dart';
import 'package:allsolz_tictactoe_game/widgets/custom_button.dart';
import 'package:allsolz_tictactoe_game/responsive/responsive.dart';

class MainMenuScreen extends StatelessWidget {

  static String routeName = '/main_menu_screen';

  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomButton(onTap: () {}, text: 'Create Room'),
          const SizedBox(height: 20),
          CustomButton(onTap: () {}, text: 'Join Room'),
        ]),
      ),
    );
  }
}
