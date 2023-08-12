import 'package:android_path_provider/android_path_provider.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:raksha/models/sos.dart';
import 'package:raksha/utils/colors.dart';
import 'package:raksha/widgets/cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/avtar.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text("Hello Madhura",
                              style: TextStyle(
                                color: Color(ColorsValue().h5),
                                fontSize: 14,
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {
                              print("hello");
                            },
                            child: Text("Complete Profile",
                                style: TextStyle(
                                  color: Color(ColorsValue().secondary),
                                  fontSize: 14,
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text("Alan zone...",
                                  style: TextStyle(
                                    color: Color(ColorsValue().h5),
                                    fontSize: 14,
                                  )),
                              const SizedBox(
                                height: 5,
                              ),
                              Text("Safe Location",
                                  style: TextStyle(
                                    color: Color(ColorsValue().secondary),
                                    fontSize: 14,
                                  )),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Boxicons.bxs_map,
                            color: Color(ColorsValue().secondary),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 64,
              ),
              Text(
                "Emergency help \n Needed?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Color(ColorsValue().h1),
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Material(
                  elevation: 8,
                  borderRadius: BorderRadius.circular(400),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black54,
                    onTap: () async {
                      var downloadsPath =
                          await AndroidPathProvider.downloadsPath;
                      print(downloadsPath + "/ironman.jpeg");

                      SOS().sharePhotoToWhatsApp("7620464305",
                          "http://file:/" + downloadsPath + "/digambar.jpeg");
                      print("file:/" + downloadsPath + "/digambar.jpeg");
                    },
                    child: Ink.image(
                      image: const AssetImage('assets/images/sos_button.png'),
                      height: 205,
                      width: 205,
                      fit: BoxFit.cover,
                      child: const Center(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Press the button to send SOS",
                style: TextStyle(
                  color: Color(ColorsValue().h5),
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        _callNumber("7620464305");
                      },
                      child: HelpLineCards(
                        title: "Police 100",
                        assetImg: "assets/images/police_badge.png",
                        number: "100",
                      )),
                  InkWell(
                      onTap: () {
                        _callNumber("9307227317");
                      },
                      child: HelpLineCards(
                        title: "Womens Helpline",
                        assetImg: "assets/images/girl_badge.png",
                        number: "100",
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  _callNumber(String number) async {
//set the number here
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }
}
