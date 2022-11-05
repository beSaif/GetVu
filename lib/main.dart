import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getvuapp/Model/MaterialColor.dart';
import 'package:getvuapp/navbar_activity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialColor color = MaterialColor(0xFFBBDEFB, colorCodes);
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GetVuApp',
        theme: ThemeData(
          primarySwatch: color,
        ),
        // home: const LoginScreen()
        home: const NavbarActivity());
  }
}
