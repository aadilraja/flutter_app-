import 'package:flutter/material.dart';

class CHAT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Center(
      child: const Text(
        "chats",
        style: TextStyle(
          fontStyle: FontStyle.normal,
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
