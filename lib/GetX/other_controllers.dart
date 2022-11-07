import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class OtherController extends GetxController {
  double? topPadding;
  TabController? tabController;

  final PersistentTabController navBarController =
      PersistentTabController(initialIndex: 0);

  void updateNavBarController(int index) {
    navBarController.index = index;
  }

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
