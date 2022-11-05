import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingController extends GetxController {
  String fromLocation = 'Kerala';
  String toLocation = 'Bangalore';
  String boardingLocation = 'Kerala';
  String dropppingLocation = '';
  String name = '';
  int age = 0;
  String gender = 'male';

  void setConfirmBooking(String nm, int ag, String gndr) {
    name = nm;
    age = ag;
    gender = gndr;
    debugPrint('Confirm Booking Set');
    update();
  }

  void updatedBoardingLocation(String bdloc) {
    boardingLocation = bdloc;
    debugPrint('Updated Boarding Location: $boardingLocation');
    update();
  }

  void updatedDroppingLocation(String dploc) {
    dropppingLocation = dploc;
    update();
  }

  void setFromLocation(String fromInLocation) {
    fromLocation = fromInLocation;
    debugPrint(fromLocation);
    update();
  }

  void setToLocation(String toInLocation) {
    toLocation = toInLocation;
    debugPrint(toLocation);
    update();
  }
}
