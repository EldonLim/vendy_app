import 'package:flutter/material.dart';
import 'package:vendy_app/pages/menupage/menupage.dart';
import 'package:vendy_app/utils/machine_container.dart';
import 'package:vendy_app/pages/homepage.dart';
import 'package:vendy_app/screens/home_screen/home_screen.dart';

class CashlessMachinesPage extends StatefulWidget {
  const CashlessMachinesPage({super.key});

  @override
  State<CashlessMachinesPage> createState() => _CashlessMachinesPageState();
}

class _CashlessMachinesPageState extends State<CashlessMachinesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 48, 0, 0),
                  child: ListView.builder(
                          // physics: ClampingScrollPhysics(), // Prevents overscrolling
                          scrollDirection: Axis.vertical,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return index==0?               
                              Container(
                                height: 7,
                                decoration: BoxDecoration(color: Color(0xFFF1F1F1)),
                              ): (index==1? SizedBox(height: 25) : GestureDetector(child: MachineContainer(),
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuPage()))));
                          }),
            ),
            
            Positioned( //for fixing upper tab
              top: 0, 
              left: 0,
              right: 0,
              child: Container(
                height: 48,
                padding: EdgeInsets.fromLTRB(0, 8, 0, 13),
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: GestureDetector(
                        child: Icon(Icons.arrow_back),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => HomePage()));
                        },),
                    ),
                    Text(
                      "Cashless Machines",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
