// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:home_screen/home/home.dart';

void main() => runApp(chitchat());

class chitchat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "chitchat",
      home: home(),
    );
  }
}
