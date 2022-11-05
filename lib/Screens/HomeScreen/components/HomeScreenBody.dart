import 'package:flutter/material.dart';
import 'package:getvuapp/Screens/HomeScreen/components/FromToWidget.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity,
        //color: Colors.green,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            FromToWidget(),
            // const Text("Home Screen"),
          ],
        ),
      ),
    )));
  }
}
