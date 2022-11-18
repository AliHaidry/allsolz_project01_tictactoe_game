import 'package:flutter/material.dart';
import 'package:allsolz_tictactoe_game/utils/colors.dart';
import 'package:allsolz_tictactoe_game/screens/main_menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicTacToe',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
      home: const MainMenuScreen(),
    );
  }
}