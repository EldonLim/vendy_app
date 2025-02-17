import 'package:flutter/material.dart';
import 'package:vendy_app/pages/map_page/widgets/popup_map.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 231, 231),
        body: SafeArea(
          child: Stack(children: [
            // Placeholder to insert map
            Container(),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.15),
                                  blurRadius: 40,
                                  offset: Offset(0, 4))
                            ]),
                        child: GestureDetector(
                          child: Icon(
                            Icons.arrow_back,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Image.asset(
                                'assets/locator_map.png',
                                width: 20,
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Current location",
                                  style: TextStyle(
                                      fontSize: 19, color: Color(0xFF7A7A7A)),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/machine_map.png',
                      width: 200,
                      height: 200,
                    ),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          barrierColor: Colors
                              .transparent, // Remove background darkening (overlay)
                          builder: (BuildContext context) {
                            return PopupMap();
                          });
                    },
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
