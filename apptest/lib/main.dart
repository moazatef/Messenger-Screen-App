// ignore_for_file: unused_local_variable
import 'package:apptest/Home_Screen.dart';
import 'package:apptest/Login_Screen.dart';
import 'package:apptest/messenger_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: messenger_screen(),
    );
  }
}
