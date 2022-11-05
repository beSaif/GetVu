import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtherController extends GetxController {
  double? topPadding;
  TabController? tabController;

  void setTopPadding(topDevPadding) {
    topPadding = topDevPadding;
  }

  void setTabController(tabController) {
    tabController = tabController;
  }

  void updateTabController(int index) {
    tabController!.index = index;
  }
}
