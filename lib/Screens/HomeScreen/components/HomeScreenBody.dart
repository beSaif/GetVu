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
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FromToWidget(),

            const SizedBox(
                height: 600,
                child: GoogleMap(initialCameraPosition: _kGooglePlex)),
            Container()
            // const Text("Home Screen"),
          ],
        ),
      ),
    )));
  }
}
