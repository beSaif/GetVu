import 'package:flutter/material.dart';
import 'package:getvuapp/Screens/HomeScreen/components/FromToWidget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(12.906299668777187, 77.64887362594783),
    zoom: 19,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.all(0),
      child: Stack(
        children: [
          const SizedBox(
              height: double.infinity,
              child: GoogleMap(initialCameraPosition: _kGooglePlex)),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [const FromToWidget(), Container()],
            ),
          ),
        ],
      ),
    )));
  }
}
