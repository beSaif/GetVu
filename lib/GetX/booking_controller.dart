import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingController extends GetxController {
  String fromLocation = 'Kerala';
  String toLocation = 'Bangalore';
  String boardingLocation = '';
  String dropppingLocation = '';
  String prefdropppingLocation = '';
  String prefboardingLocation = '';
  String name = '';
  int age = 0;
  String gender = 'male';
  bool goToUserDetails = false;
  //TODO: SET TO FALSE
  bool goToTicketCards = false;

  void updategoToTicketCards(bool value) {
    goToTicketCards = value;
    update();
  }

  void updategoTouserDetails(bool value) {
    goToUserDetails = value;
    update();
  }

  void setprefdropppingLocation(String value) {
    prefdropppingLocation = value;
    update();
  }

  void setprefboardingLocation(String value) {
    prefboardingLocation = value;
    update();
  }

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
