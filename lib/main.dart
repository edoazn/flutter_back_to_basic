import 'package:flutter/material.dart';
import 'package:flutter_back_to_basic/02_display_widgets/button.dart';
import 'package:flutter_back_to_basic/02_display_widgets/container.dart';
import 'package:flutter_back_to_basic/02_display_widgets/drawer.dart';
import 'package:flutter_back_to_basic/02_display_widgets/floating_action_button.dart';
import 'package:flutter_back_to_basic/02_display_widgets/images_widget.dart';
import 'package:flutter_back_to_basic/02_display_widgets/layout.dart';
import 'package:flutter_back_to_basic/02_display_widgets/listview.dart';
import 'package:flutter_back_to_basic/02_display_widgets/stack_and_positioned.dart';
import 'package:flutter_back_to_basic/screens/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic',
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
      routes: {
        '/dashboard': (context) => const Dashboard(),
        '/images-widget': (context) => const ImagesWidget(),
        '/container-widget': (context) => const ContainerWidget(),
        '/button-widget': (context) => const ButtonScreen(),
        '/layout-widget': (context) => const LayoutScreen(),
        '/listview-widget': (context) => ListviewScreen(),
        '/drawer-widget': (context) => DrawerScreen(),
        '/fba-widget': (context) => FBAScreen(),
        '/stack-positioned-widget': (context) => StackAndPositionedScreen(),
      },
    );
  }
}
