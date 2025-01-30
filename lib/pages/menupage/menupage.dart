import 'package:flutter/material.dart';
import 'package:vendy_app/pages/menupage/widgets/item_container_menu.dart';
import 'package:vendy_app/pages/menupage/widgets/machine_container_menu.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
        children: [
          ColorFiltered(
          colorFilter: ColorFilter.mode(
            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5), // Adjust opacity for brightness effect
            BlendMode.multiply, // Use 'screen' or 'modulate' for exposure effect
          ),
            child: Image.asset("assets/vending_machine.png",
            height: 180,
            width: screenWidth,
            fit: BoxFit.cover,),
            ),
          SafeArea(child:
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        shape: BoxShape.circle),
                      child: Icon(Icons.arrow_back,
                      color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: 20,
                    ),
                  MachineContainerMenu(),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Menu Items",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 19
                  ),),
                  SizedBox(
                    height: 15,
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 0,
                    runSpacing: 10, 
                    children: List.generate(6, (index) => ItemContainerMenu(price: "2.0", item: "Coca-cola")),
                  ),
              ],
                        ),
            ))
        ],
      )),
    );
  }
}