import 'package:flutter/material.dart';

class FBAScreen extends StatelessWidget {
  const FBAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        foregroundColor: Colors.white,
        title: Text("FBA Screen"),
        centerTitle: true,
      ),
      // Floating Widget
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black87,
        foregroundColor: Colors.yellow,
        shape: StadiumBorder(),
        child: Icon(Icons.add),
      ),

      // Bottom Nav Bar
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
            SizedBox(width: 48),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
