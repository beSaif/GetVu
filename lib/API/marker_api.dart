import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerApi {
  static const CameraPosition _defaultLocation = CameraPosition(
    target: LatLng(12.906299668777187, 77.64887362594783),
    zoom: 17,
  );

  static final Set<Marker> _markers = {
    Marker(
      markerId: const MarkerId("defaultLocation"),
      position: _defaultLocation.target,
      icon: BitmapDescriptor.defaultMarkerWithHue(205),
      infoWindow: const InfoWindow(
        title: "Current Location",
        snippet: "you are here",
      ),
      onTap: () {
        debugPrint("Marker Tapped");
      },
    ),
    Marker(
      markerId: const MarkerId("user1"),
      position: LatLng(_defaultLocation.target.latitude + 0.001,
          _defaultLocation.target.longitude + 0.001),
      icon: BitmapDescriptor.defaultMarkerWithHue(205),
      infoWindow: const InfoWindow(
        title: "Santhosh",
        snippet: "GetVu Founder",
      ),
      onTap: () {
        debugPrint("Marker Tapped");
      },
    ),
    Marker(
      markerId: const MarkerId("user2"),
      position: LatLng(_defaultLocation.target.latitude - 0.001,
          _defaultLocation.target.longitude - 0.001),
      icon: BitmapDescriptor.defaultMarkerWithHue(205),
      infoWindow: const InfoWindow(
        title: "Saif",
        snippet: "Flutter Developer",
      ),
      onTap: () {
        debugPrint("Marker Tapped");
      },
    ),
    Marker(
      markerId: const MarkerId("user3"),
      position: LatLng(_defaultLocation.target.latitude - 0.0018,
          _defaultLocation.target.longitude - 0.001),
      icon: BitmapDescriptor.defaultMarkerWithHue(205),
      infoWindow: const InfoWindow(
        title: "Jumainah",
        snippet: "Flutter Developer",
      ),
      onTap: () {
        debugPrint("Marker Tapped");
      },
    )
  };

  static Future<Set<Marker>> getMarkers() async {
    return _markers;
  }
}
