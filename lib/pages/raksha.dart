import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:raksha/Home/home.dart';
import 'package:raksha/tools/tools.dart';
import 'package:raksha/utils/colors.dart';
import 'package:raksha/Map/map.dart';

class Raksha extends StatefulWidget {
  const Raksha({super.key});

  @override
  State<Raksha> createState() => _RakshaState();
}

class _RakshaState extends State<Raksha> {
  List pages = [
    const HomePage(),
    const MapScreen(),
    const Text("Bot"),
    const ToolsPage(),
    const Text("Community"),
  ];

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Center(
          child: pages[_currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        iconSize: 28,
        selectedItemColor: Color(ColorsValue().secondary),
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Boxicons.bxs_home,
              color: Color(ColorsValue().secondary),
            ),
            icon: const Icon(
              Boxicons.bx_home,
              color: Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Boxicons.bxs_map,
              color: Color(ColorsValue().secondary),
            ),
            icon: const Icon(
              Boxicons.bx_map,
              color: Colors.grey,
            ),
            label: "Map",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Boxicons.bxs_bot,
              color: Color(ColorsValue().secondary),
            ),
            icon: const Icon(
              Boxicons.bx_bot,
              color: Colors.grey,
            ),
            label: "Bot",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Boxicons.bxs_shield,
              color: Color(ColorsValue().secondary),
            ),
            icon: const Icon(
              Boxicons.bx_shield,
              color: Colors.grey,
            ),
            label: "Tools",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Boxicons.bxs_group,
              color: Color(ColorsValue().secondary),
            ),
            icon: const Icon(
              Boxicons.bx_group,
              color: Colors.grey,
            ),
            label: "Community",
          ),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    ));
  }
}
