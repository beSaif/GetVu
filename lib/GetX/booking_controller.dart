import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingController extends GetxController {
  String fromLocation = 'Kerala';
  String toLocation = 'Bangalore';

  void setFromLocation(String fromInLocation) {
    fromLocation = fromInLocation;
    debugPrint(fromLocation);
    update();
  }

  void setToLocation(String toInLocation) {
    toLocation = toInLocation;
    debugPrint(fromLocation);
    update();
  }
}
