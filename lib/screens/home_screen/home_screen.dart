import 'package:flutter/material.dart';
import 'package:vendy_app/colors.dart';
import 'package:vendy_app/pages/cashlessmachinespage.dart';
import 'package:vendy_app/pages/mappage/mappage.dart';
import 'package:vendy_app/pages/menupage/menupage.dart';
import 'package:vendy_app/screens/home_screen/widgets/product_container.dart';
import 'package:vendy_app/screens/home_screen/widgets/round_section.dart';
import 'package:vendy_app/screens/home_screen/widgets/search_bar.dart';

import '../../pages/explorepage.dart';
import '../history_screen/history_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  child: Image.asset(
                  'assets/vendy_banner.jpg',
                  height: screenHeight * 0.25,
                  width: screenWidth,
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                        boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), // Shadow color with opacity
                        spreadRadius: 30, // Spread radius
                        blurRadius: 30,  // Blur radius
                        offset: Offset(0, 4), // Offset in x and y
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.15,
                      width: screenWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RoundSection(
                              foodType: "Snacks",
                              iconPath: 'assets/snacks_icon.png'),
                          RoundSection(
                              foodType: "Beverages",
                              iconPath: 'assets/beverages_icon.png'),
                          RoundSection(
                              foodType: "Hot meals",
                              iconPath: 'assets/hot_meals_icon.png'),
                          RoundSection(
                              foodType: "Cold meals",
                              iconPath: 'assets/cold_meals_icon.png')
                        ],
                      ),
                    ),
                    // Explore Section
                    Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Explore",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 19),
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.arrow_forward,
                              size: 22,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ExplorePage()),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  EdgeInsets.only(right: index == 7 ? 15 : 0),
                              child: GestureDetector(child: ProductContainer(),
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context)=>MenuPage())),),
                            );
                          }),
                    ),
                    // Cashless Machines Section
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cashless Machines",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 19),
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.arrow_forward,
                              size: 22,
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> CashlessMachinesPage()));
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  EdgeInsets.only(right: index == 7 ? 15 : 0),
                              child: GestureDetector(child: ProductContainer(),
                              onTap:() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuPage()));
                              },),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 335,
                      height: 45,
                      decoration: BoxDecoration(
                          color: AppColors.button,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20)
                          ),
                      child: Center(
                        child: GestureDetector(
                          child: Text(
                            "Near me",
                            style: TextStyle(
                                //329f8b
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MapPage()));
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.25 - 30,
                ),
                Center(
                  child: SizedBox(
                      height: 60,
                      width: screenWidth * 0.9,
                      child: CustomSearchBar()),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
