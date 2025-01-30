import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vendy_app/pages/cashlessmachinespage.dart';
import 'package:vendy_app/pages/explorepage.dart';
import 'package:vendy_app/pages/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Inter"),
        debugShowCheckedModeBanner: false, home: CashlessMachinesPage(),
        );
  }
}
