import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          "Button Widget",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        foregroundColor: Colors.blue,
        flexibleSpace: Image(
          image: AssetImage("assets/images/img_app_bar.jpg"),
          fit: BoxFit.cover,
        ),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
        // ),
        elevation: 5.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Elevated Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                padding: EdgeInsets.all(20.0),
                textStyle: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                side: BorderSide(color: Colors.black, width: 2.0),
                shape: StadiumBorder(),
              ),
              child: Text("Elevated Button"),
            ),
            SizedBox(height: 20.0),

            // Button Icon
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.save),
              iconSize: 32.0,
              splashColor: Colors.blue.withValues(alpha: 0.3),
              style: IconButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ),

            // Outline Button
            OutlinedButton(onPressed: () {}, child: Text("Outline Button")),
            SizedBox(height: 20.0),

            // Row with Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Lanjutkan"),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
