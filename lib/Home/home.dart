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
              "Emergency help Needed?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40,
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
              children: const [],
            )
          ],
        ),
      ),
    ));
  }
}
