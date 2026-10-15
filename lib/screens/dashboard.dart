import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Azn'),
        actions: [
          Image.asset('assets/images/img_avatar.png', height: 30, width: 30),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/img_timer.png', height: 120, width: 200),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Text(
              "Selamat Datang, Tamu Undangan!",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
