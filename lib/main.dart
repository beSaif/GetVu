import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getvuapp/Model/MaterialColor.dart';
import 'package:getvuapp/navbar_activity.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await MarkerApi.setMarker();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialColor color = MaterialColor(0xFFBBDEFB, colorCodes);

    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'GetVuApp',
          theme: ThemeData(
            primarySwatch: color,
          ),
          // home: const LoginScreen()
          navigatorKey: navigatorKey,
          home: const NavbarActivity());
    });
  }
}
