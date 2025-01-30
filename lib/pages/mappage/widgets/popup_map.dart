import 'package:flutter/material.dart';
import 'package:vendy_app/colors.dart';
import 'package:vendy_app/utils/category_container.dart';

class PopupMap extends StatelessWidget {
  const PopupMap({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: 380,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,0,30,0),
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Container(
              height: 4,
              width: 60,
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text("Vending Machine",
                style: TextStyle(
                  fontSize: 19
                ),),
                Spacer(),
                Icon(Icons.favorite_border_rounded,
                color: Color(0xFF7A7A7A),)
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:5),
                  child: Icon(Icons.star,
                  color: Colors.amber,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text("4.9",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF7A7A7A)
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text("0.9km away",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF7A7A7A)
                  ),
                  ),
                ),
                Text("cashless",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: AppColors.button,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 13,
                  children: [
                    CategoryContainer(category:"snacks"),
                    CategoryContainer(category:"beverages"),
                    CategoryContainer(category:"hot meals"),
                    CategoryContainer(category:"cold meals")
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 35,
                  width: 140,
                  decoration: BoxDecoration(
                    color: AppColors.button,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/arrow_map.png",
                      height: 13,
                      width: 13,),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Take me there",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 35,
                  width: 125,
                  decoration: BoxDecoration(
                    color: AppColors.button,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.menu_book_rounded,
                      color: Colors.white,
                      size: 18,),
                      SizedBox(
                        width: 5,
                      ),
                      Text("View menu",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/vending_machine.png',
                  height: 170,
                  width: 170,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}