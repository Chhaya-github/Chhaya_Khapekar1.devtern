import 'package:bmi_calculator/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Lora',
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Lora',
      ),
    )
  );
}
