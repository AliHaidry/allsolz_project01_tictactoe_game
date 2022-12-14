import 'package:flutter/material.dart';
import 'package:allsolz_tictactoe_game/utils/colors.dart';
import 'package:allsolz_tictactoe_game/screens/main_menu_screen.dart';
import 'package:allsolz_tictactoe_game/screens/create_room_screen.dart';
import 'package:allsolz_tictactoe_game/screens/join_room_screen.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TicTacToe',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
      routes: {
        MainMenuScreen.routeName: (context) => const MainMenuScreen(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen()

      },
      initialRoute: MainMenuScreen.routeName,
    );
  }
}