import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    //0.15
    //0.21
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 200,
        width: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                'assets/vending_machine.png',
                height: 140,
                width: 140,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Vending Machine",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Row(
              children: [
                Text("0.09km", style: TextStyle(fontSize: 13),),
                Spacer(),
                Icon(
                  Icons.star,
                  color: Color(0xFFFFCC00),
                ),
                SizedBox(
                  width: 3,
                ),
                Text("4.1", style: TextStyle(fontSize: 13),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
