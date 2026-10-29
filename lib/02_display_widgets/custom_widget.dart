import 'package:flutter/material.dart';

import '../component/game_list.dart';

class CustomWidgetScreen extends StatelessWidget {
  const CustomWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Widget")),
      body: ListView(
        children: [
          GameListCustom(
            title: "God of War 3",
            subTitle: "Bantu Kratos membalas dendam",
            iconColor: Colors.teal,
            leadingIcon: Icons.gamepad,
            trailingIcon: Icons.sixty_fps,
            listTileColor: Colors.black87,
          ),
          GameListCustom(
            title: "Mario Odyssey",
            subTitle: "Cari jamur kehidupan",
            iconColor: Colors.teal,
            leadingIcon: Icons.gamepad,
            trailingIcon: Icons.sixty_fps,
            listTileColor: Colors.black87,
          ),
          GameListCustom(
            title: "Monster Hunter OG",
            subTitle: "Berburu monster menantang",
            iconColor: Colors.teal,
            leadingIcon: Icons.gamepad,
            trailingIcon: Icons.sixty_fps,
            listTileColor: Colors.black87,
          ),
        ],
      ),
    );
  }
}
