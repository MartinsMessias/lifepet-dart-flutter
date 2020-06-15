import 'package:flutter/material.dart';
import 'package:lifepetapp/screens/home_screen.dart';
import 'package:lifepetapp/screens/pet/remedios_pet_screen.dart';

import 'models/pet_model.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      debugShowCheckedModeBanner: false,
      title: "Pet Life",
      home: new HomeScreen(),
    );
  }
}
