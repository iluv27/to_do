// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Screens/items_added.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddItems(),
      theme: ThemeData.dark().copyWith(
        bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Color.fromARGB(255, 20, 20, 23)),
        scaffoldBackgroundColor: Color.fromARGB(255, 20, 20, 23),
        primaryColor: Colors.black,
      ),
    );
  }
}
