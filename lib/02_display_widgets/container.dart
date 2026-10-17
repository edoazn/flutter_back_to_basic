import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Container 1
          Container(
            height: 200.0,
            // width full screen
            width: double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 50.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.blueGrey,
              image: DecorationImage(
                image: AssetImage('assets/images/img_report.png'),
                fit: BoxFit.contain,
                alignment: Alignment.topRight,
                opacity: 0.5,
              ),
              // gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
            ),
            child: Text(
              "Container!",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          // Container 2
          Row(
            children: [
              Container(
                height: 80.0,
                width: 100.0,
                alignment: Alignment.center,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.symmetric(
                    horizontal: BorderSide(color: Colors.black, width: 6.0),
                  ),
                ),
                child: Text(
                  "1",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                height: 80.0,
                width: 100.0,
                alignment: Alignment.center,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Text(
                  "2",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                height: 80.0,
                width: 100.0,
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: Colors.black, width: 6.0),
                ),
                child: Text(
                  "3",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),

          // Container 3
          Container(
            height: 200.0,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 38.0),
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.lightBlue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.add_circle_outlined,
                  size: 30.0,
                  color: Colors.white,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "3",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "4",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.add_circle_outlined,
                  size: 30.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),

          // Container 4
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 80.0,
                width: 100.0,
                alignment: Alignment.topLeft,
                color: Colors.red,
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "1",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                height: 80.0,
                width: 100.0,
                alignment: Alignment.center,
                color: Colors.yellow,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "2",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                height: 80.0,
                width: 100.0,
                alignment: Alignment.bottomRight,
                color: Colors.green,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "3",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
