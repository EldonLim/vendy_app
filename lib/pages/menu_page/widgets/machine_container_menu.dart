import 'package:flutter/material.dart';
import 'package:vendy_app/colors.dart';
import 'package:vendy_app/utils/category_container.dart';

class MachineContainerMenu extends StatelessWidget {
  const MachineContainerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: 150,
      width: screenWidth-40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
          color: Colors.black.withOpacity(0.15), // Shadow color with opacity
          spreadRadius: 0,  // How much the shadow spreads
          blurRadius: 30,  // Soften the shadow
          offset: Offset(0, 4),  // Move shadow (X, Y)
        ),
    ],
      ),

      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: ClipRRect( //use this for image corner
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/vending_machine.png',
              height: 120,
              width: 120,),
            ),
          ),
          SizedBox(
              width: 14,
            ),
            Expanded( //column need to be wrapped in expanded if not in container as dk hw much space to take up
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text("Vending Machine",
                  style: TextStyle(
                    fontSize: 18,
                  )),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(
                        width: 4,
                      ),
                      Text('4.9', style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF7A7A7A)
                      ),),
                      SizedBox(
                        width: 10,
                      ),
                      Text("cashless", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                        color: AppColors.button,
                      ),
                     )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: 190,
                    child: Wrap(
                      alignment: WrapAlignment.start, 
                      spacing: 5, // gap between adjacent chips
                      runSpacing: 5, // gap between lines
                      children: [
                        CategoryContainer(category: 'snacks'), //in flutter need to pass this way
                        CategoryContainer(category: 'beverages'),
                        CategoryContainer(category: 'hot meals'),
                        CategoryContainer(category: 'cold meals')
                      ],
                    ),
                  )
                ],
              ),
            )

        ],
      ),
    );
  }
}