import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> routeTitle = [
    "Image",
    "Container",
    "Button",
    "Layout",
    "Listview",
    "Drawer",
    "Floating Action Button"
  ];

  List<String> routeName = [
    '/images-widget',
    '/container-widget',
    '/button-widget',
    '/layout-widget',
    '/listview-widget',
    '/drawer-widget',
    '/fba-widget',
  ];

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
        child: ListView.builder(
          itemCount: routeName.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(routeTitle[index]),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, routeName[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
