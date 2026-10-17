import 'package:flutter/material.dart';
import 'package:flutter_back_to_basic/02_display_widgets/images_widget.dart';
import 'package:flutter_back_to_basic/screens/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Basic', home: Dashboard(),
    routes: {
      '/dashboard' : (context) => const Dashboard(),
      '/images-widget' : (context) => const ImagesWidget(),
    },
    );
  }
}
