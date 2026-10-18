import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/nj_logo.png", height: 60.0),
        automaticallyImplyActions: false,
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Expended
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image(
                  image: AssetImage("assets/images/my_hearin.jpg"),
                  // height: 200.0,
                ),
              ),
              Expanded(
                flex: 2,
                child: Image(
                  image: AssetImage("assets/images/my_hearin.jpg"),
                  // height: 200.0,
                ),
              ),
              Expanded(
                child: Image(
                  image: AssetImage("assets/images/my_hearin.jpg"),
                  // height: 200.0,
                ),
              ),
            ],
          ),

          SizedBox(height: 20.0),
          // Rating with Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8.0,
            children: [
              Icon(
                Icons.star,
                size: 24,
                color: Colors.yellow.withValues(alpha: 1.0),
              ),
              Icon(
                Icons.star,
                size: 24,
                color: Colors.yellow.withValues(alpha: 1.0),
              ),
              Icon(
                Icons.star,
                size: 24,
                color: Colors.yellow.withValues(alpha: 1.0),
              ),
              Icon(
                Icons.star_border,
                size: 24,
                color: Colors.yellow.withValues(alpha: 1.0),
              ),
              Icon(
                Icons.star_border,
                size: 24,
                color: Colors.yellow.withValues(alpha: 1.0),
              ),
            ],
          ),

          SizedBox(height: 20.0),
          // Row with Column
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(Icons.import_contacts_sharp, size: 30.0),
                  Text("Buku"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.horizontal_split_outlined, size: 30.0),
                  Text("Kertas"),
                ],
              ),
              Column(
                children: [Icon(Icons.alt_route, size: 30.0), Text("Rute")],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          //Column
          // Extended
        ],
      ),
    );
  }
}
