import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          Image.asset('assets/images/img_avatar.png', height: 30, width: 30),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // List Halaman latihan
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Images Widget
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/images-widget');
                    },
                    child: const Text('Images Widget'),
                  ),

                  // Containter Widget
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/container-widget');
                    },
                    child: const Text('Container Widget'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
