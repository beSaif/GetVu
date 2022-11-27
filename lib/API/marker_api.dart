import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:getvuapp/GetX/other_controllers.dart';
import 'package:getvuapp/Screens/HomeScreen/components/markerDialog.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerApi {
  static late Position userCurrentLocation;
  static bool positionSet = false;

  static Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) async {
      await Geolocator.requestPermission();
      debugPrint("ERROR $error");
    });

    return await Geolocator.getCurrentPosition();
  }

  static Future<Set<Marker>> setMarker() async {
    if (positionSet) {
      final Set<Marker> markers = await getMarkers(
          userCurrentLocation.latitude, userCurrentLocation.longitude);

      markers.add(
        Marker(
          markerId: const MarkerId("userLocation"),
          position: LatLng(
              userCurrentLocation.latitude, userCurrentLocation.longitude),
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: const InfoWindow(
            title: "Your Location",
            //snippet: "GetVu Founder",
          ),
          onTap: () {
            debugPrint("Marker Tapped");
          },
        ),
      );

      return markers;
    } else {
      userCurrentLocation = await getUserCurrentLocation();
      positionSet = true;
      return await setMarker();
    }
  }

  static Future<Set<Marker>> getMarkers(latitude, longitude) async {
    final Set<Marker> markers = {
      Marker(
        markerId: const MarkerId("user1"),
        position: LatLng(latitude + 0.001, longitude + 0.001),
        icon: BitmapDescriptor.defaultMarkerWithHue(205),
        infoWindow: InfoWindow(
          title: "Santhosh",
          snippet: "GetVu Founder",
          onTap: () => MarkerDialog(
            title: "Santhosh",
            pos: "GetVu Founder",
            toI: "Startups",
            goals: 'To make a difference',
          ),
        ),
      ),
      Marker(
        markerId: const MarkerId("user2"),
        position: LatLng(latitude - 0.001, longitude - 0.001),
        icon: BitmapDescriptor.defaultMarkerWithHue(205),
        infoWindow: InfoWindow(
          title: "Saif",
          snippet: "Flutter Developer",
          onTap: () => MarkerDialog(
            title: "Saif",
            pos: "Flutter Developer",
            toI: "App Dev",
            goals: 'To publish flutter packages in pub.dev',
          ),
        ),
      ),
      Marker(
        markerId: const MarkerId("user3"),
        position: LatLng(latitude - 0.0018, longitude - 0.001),
        icon: BitmapDescriptor.defaultMarkerWithHue(205),
        infoWindow: InfoWindow(
          title: "Jumainah",
          snippet: "Flutter Developer",
          onTap: () => MarkerDialog(
            title: "Jumainah",
            pos: "Flutter Developer",
            toI: "App Dev",
            goals: 'To be a Flutter Pro',
          ),
        ),
      )
    };
    return markers;
  }
}
