import 'package:flutter/material.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Images and Icons Widget")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img_timer.png',
              height: 200,
              width: 400,
              fit: BoxFit.contain,
            ),
            //Row with 2 icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 16.0,
              children: [
                IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.teal,
                  iconSize: 32,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.minimize),
                  color: Colors.teal,
                  iconSize: 32,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
