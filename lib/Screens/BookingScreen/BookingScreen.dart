import 'package:flutter/material.dart';
import 'package:getvuapp/Screens/BookingScreen/components/BookingScreenBody.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: BookingScreenBody(),
        ),
      ),
    );
  }
}
