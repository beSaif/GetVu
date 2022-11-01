import 'package:flutter/material.dart';
import 'package:getvuapp/Screens/HomeScreen/components/HomeScreenBody.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const HomeScreenBody();
  }
}
