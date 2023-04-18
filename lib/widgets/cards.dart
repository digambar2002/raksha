import 'package:flutter/material.dart';

import '../utils/colors.dart';

// Home Card
class HelpLineCards extends StatelessWidget {
  String title;
  String number;
  String assetImg;

  HelpLineCards({
    super.key,
    required this.title,
    required this.number,
    required this.assetImg,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 130,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                assetImg,
                height: 40,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Color(ColorsValue().h1),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "call $number",
                style: TextStyle(
                  color: Color(ColorsValue().h5),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ToolsCard extends StatelessWidget {
  String title;
  String imageurl;
  ToolsCard({super.key, required this.title, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Card(
        color: Colors.white,
        elevation: 35,
        //shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(
                imageurl,
              ),
              Text(title, style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
