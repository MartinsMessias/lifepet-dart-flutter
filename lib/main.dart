import 'package:flutter/material.dart';
import 'package:lifepetapp/screens/home_screen.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pet Life",
      home: new HomeScreen(),
    );
  }
}
