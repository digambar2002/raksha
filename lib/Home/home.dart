import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:raksha/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
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
                        image: DecorationImage(
                          image: AssetImage("assets/images/avtar.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text("Hello Madhura",
                            style: TextStyle(
                              color: Color(ColorsValue().h5),
                              fontSize: 14,
                            )),
                        SizedBox(
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
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text("Alan zone...",
                                style: TextStyle(
                                  color: Color(ColorsValue().h5),
                                  fontSize: 14,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Safe Location",
                                style: TextStyle(
                                  color: Color(ColorsValue().secondary),
                                  fontSize: 14,
                                )),
                          ],
                        ),
                        SizedBox(
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
            SizedBox(
              height: 64,
            ),
            Text(
              "Emergency help Needed?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40,
                  color: Color(ColorsValue().h1),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(200),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black54,
                  onTap: () {},
                  child: Ink.image(
                    image: const AssetImage('assets/images/sos_button.png'),
                    height: 225,
                    width: 225,
                    fit: BoxFit.cover,
                    child: const Center(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Press the button to send SOS",
              style: TextStyle(
                color: Color(ColorsValue().h5),
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 170,
                    height: 130,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/police_badge.png",
                              height: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Police helpline",
                              style: TextStyle(
                                  color: Color(ColorsValue().h1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "call 100 ",
                              style: TextStyle(
                                color: Color(ColorsValue().h5),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                Container(
                    width: 170,
                    height: 130,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/police_badge.png",
                              height: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Police helpline",
                              style: TextStyle(
                                  color: Color(ColorsValue().h1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "call 100 ",
                              style: TextStyle(
                                color: Color(ColorsValue().h5),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
