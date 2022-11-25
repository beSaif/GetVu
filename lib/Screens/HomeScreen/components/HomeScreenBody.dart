import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:getvuapp/API/marker_api.dart';
import 'package:getvuapp/GetX/other_controllers.dart';
import 'package:getvuapp/Screens/HomeScreen/components/FromToWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lottie/lottie.dart' as lottie_import;

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  final OtherController _otherController =
      Get.put(OtherController(), permanent: false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.all(0),
      child: FutureBuilder(
          future: MarkerApi.setMarker(),
          builder: (BuildContext context, AsyncSnapshot<Set<Marker>> snapshot) {
            List<Widget> children;
            if (snapshot.hasData) {
              debugPrint('Done');

              children = <Widget>[
                Expanded(
                  child: Stack(
                    children: [
                      SizedBox(
                          height: double.infinity,
                          child: GoogleMap(
                            mapType: MapType.terrain,
                            initialCameraPosition: CameraPosition(
                                target: LatLng(
                                    MarkerApi.userCurrentLocation.latitude,
                                    MarkerApi.userCurrentLocation.longitude),
                                zoom: 15),
                            markers: snapshot.data!,
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
                )
              ];
            } else if (snapshot.hasError) {
              children = <Widget>[
                const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Error: ${snapshot.error}'),
                ),
              ];
            } else {
              children = <Widget>[
                lottie_import.LottieBuilder.asset(
                    'assets/Animation/location.json'),
                const Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Text('Getting your location...'),
                ),
              ];
            }

            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: children,
            ));
          }),
    )));
  }
}
