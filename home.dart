import 'package:flutter/material.dart';
import 'package:home_screen/pages/chat_section.dart';
import 'package:home_screen/pages/room_section.dart';
import 'package:home_screen/menu_screen/about.dart';
import 'package:home_screen/menu_screen/profile.dart';
import 'package:home_screen/menu_screen/setting.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int currentIndex = -1;
  int _menuItem = 0;

  final list = [
    profile(),
    setting(),
    about(),
  ];

  final Screen = [
    CHAT(),
    rooms(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar section
      appBar: AppBar(
        title: Text(
          currentIndex == 0 ? "friends" : "room",
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: currentIndex == 0 ? Colors.blue : Colors.red,
        centerTitle: true,
        leading: PopupMenuButton<int>(
          itemBuilder: (context) => const [
            PopupMenuItem(
              value: 1,
              child: Text("profile"),
            ),
            PopupMenuItem(
              value: 2,
              child: Text("settings"),
            ),
            PopupMenuItem(
              value: 3,
              child: Text("about"),
            ),
          ],
          onSelected: (value) => setState(
            () {
              _menuItem = value;
            },
          ),
        ),
      ),

      //body section

      body: _menuItem != 0
          ? WillPopScope(
              onWillPop: () async {
                setState(
                  () => _menuItem = 0,
                );
                return false;
              },
              child: list[_menuItem - 1],
            )
          : Screen[currentIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: Column(
        children: [
          Container(
            height: 27,
            width: 15,
            color: Colors.blue,
            alignment: Alignment.bottomLeft,
            child: const Text(
              "Chats",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ),
          Container(
            height: 27,
            width: 15,
            color: Colors.red,
            alignment: Alignment.bottomRight,
            child: const Text(
              "Rooms",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
