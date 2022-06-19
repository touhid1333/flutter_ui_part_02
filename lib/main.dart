import 'package:flutter/material.dart';
import 'package:flutter_ui_part_02/screens/home_screen.dart';
import 'package:flutter_ui_part_02/utils/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyTheme().globalTheme,
      home: const HomeScreen(),
    );
  }
}
