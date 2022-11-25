import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getvuapp/API/marker_api.dart';
import 'package:getvuapp/GetX/other_controllers.dart';
import 'package:getvuapp/Screens/HomeScreen/components/FromToWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  final OtherController _otherController =
      Get.put(OtherController(), permanent: false);

  static const CameraPosition _defaultLocation = CameraPosition(
    target: LatLng(12.906299668777187, 77.64887362594783),
    zoom: 17,
  );

  Set<Marker> _markers = {};

  void fetchMarker() async {
    _markers = await MarkerApi.getMarkers();
    if (_markers != null) {
      debugPrint("Fetched Successfully");
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState

    fetchMarker();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.all(0),
      child: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              child: GoogleMap(
                mapType: MapType.terrain,
                initialCameraPosition: _defaultLocation,
                markers: _markers,
              )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [const FromToWidget(), Container()],
            ),
          ),
          Positioned(
              right: 0,
              left: 0,
              bottom: 30,
              child: SizedBox(
                height: 60,
                child: FittedBox(
                  child: FloatingActionButton.extended(
                      backgroundColor: Colors.blue[400],
                      onPressed: () {
                        _otherController.updateNavBarController(1);
                      },
                      label: Text(
                        'BOOK',
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ))
        ],
      ),
    )));
  }
}
