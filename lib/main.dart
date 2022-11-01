import 'package:flutter/material.dart';
import 'package:getvuapp/navbar_activity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GetVuApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const NavbarActivity());
  }
}
