import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vendy_app/pages/cashless_machine_page/cashless_machines_page.dart';
import 'package:vendy_app/pages/explore_machine_page/explore_page.dart';
import 'package:vendy_app/pages/homepage/homepage.dart';
import 'package:vendy_app/pages/menu_page/menu_page.dart';

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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
