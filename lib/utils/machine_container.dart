import 'package:flutter/material.dart';
import 'package:vendy_app/colors.dart';
import 'package:vendy_app/utils/category_container.dart';

class MachineContainer extends StatelessWidget {
  const MachineContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20,0,20,25),
      child: SizedBox(
        height: 130,
        // decoration: BoxDecoration(color: const Color.fromARGB(255, 241, 241, 241)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15), 
              child: Image.asset("assets/vending_machine.png",
              height: 130,
              width: 130,
              fit: BoxFit.cover,
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
                  Row(
                    children: [
                      Text("Vending Machine",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      )),
                      Spacer(),
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(
                        width: 4,
                      ),
                      Text('4.9', style: TextStyle(
                        fontSize: 14
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text("0.9km away", style: TextStyle(
                        fontSize: 13
                      )
                    ),
                      Spacer(),
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
      ),
    );
  }
}
