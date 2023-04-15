import 'package:flutter/material.dart';

import '../utils/colors.dart';

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
