import 'package:flutter/material.dart';

import '../widgets/cards.dart';

class ToolsPage extends StatefulWidget {
  const ToolsPage({super.key});

  @override
  State<ToolsPage> createState() => _ToolsPageState();
}

class _ToolsPageState extends State<ToolsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        // crossAxisSpacing: 4.0,
        // mainAxisSpacing: 8.0,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.white,
              child: ToolsCard(
                  imageurl: 'assets/images/Group 70.png', title: "Scan Taxi"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.white,
              child: ToolsCard(
                  imageurl: 'assets/images/Pin.png', title: "Safety Tips"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.white,
              child: ToolsCard(
                  imageurl: 'assets/images/Group 75.png',
                  title: "Defense Tools"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.white,
              child: ToolsCard(
                  imageurl: 'assets/images/Courage.png', title: "Self Defense"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.white,
              child: ToolsCard(
                  imageurl: 'assets/images/Siren.png',
                  title: "  Emergency   Numbers"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.white,
              child: ToolsCard(
                  imageurl: 'assets/images/Wearable Technology.png',
                  title: "  Link Watch"),
            ),
          )
        ],
      ),
    );
  }

  Widget getWidget(Color color, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 50,
        color: Colors.white,
        child: Icon(
          icon,
          size: 80,
        ),
      ),
    );
  }
}
