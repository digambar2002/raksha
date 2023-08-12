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
      height: 110,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    assetImg,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Color(ColorsValue().h1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                  // Text(
                  //   "call $number",
                  //   style: TextStyle(
                  //     color: Color(ColorsValue().h5),
                  //     fontSize: 16,
                  //   ),
                  // ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.red,
                  )
                ],
              )
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
      width: 180,
      height: 180,
      child: Card(
        color: Colors.white,
        elevation: 5,
        //shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(
                imageurl,
                height: 60,
              ),
              SizedBox(height: 10),
              Text(title, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWithBackgroundImage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  CardWithBackgroundImage(
      {required this.title,
      required this.description,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          // Background image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ),
          // Card content
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
