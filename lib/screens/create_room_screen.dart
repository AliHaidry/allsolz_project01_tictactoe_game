import 'package:flutter/material.dart';
import 'package:allsolz_tictactoe_game/widgets/custom_text.dart';
import 'package:allsolz_tictactoe_game/widgets/custom_textfield.dart';
import 'package:allsolz_tictactoe_game/widgets/custom_button.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create-room';
  const CreateRoomScreen({Key? key}) : super(key: key);

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(shadows: [
                Shadow(
                  blurRadius: 50,
                  color: Colors.blue,
                ),
              ], text: 'Create Room', fontSize: 70),
              SizedBox(height: size.height * 0.08),
              CustomTextField(
                  controller: _nameController, hintText: 'Enter your name'),
              SizedBox(height: size.height * 0.02),
              CustomButton(onTap: () {}, text: 'Create'),
            ]),
      ),
    );
  }
}
