import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getvuapp/GetX/booking_controller.dart';
import 'package:getvuapp/Screens/HomeScreen/components/FromToWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectCity extends StatefulWidget {
  final ButtonType buttonType;
  const SelectCity({
    Key? key,
    required this.buttonType,
  }) : super(key: key);

  @override
  State<SelectCity> createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  final BookingController _bookingController =
      Get.put(BookingController(), permanent: false);
  List cities = ['Mumbai', 'Bangalore', 'Kerala', 'Delhi', 'Chennai'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Select City'),
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () async {
                if (widget.buttonType == ButtonType.from) {
                  _bookingController.setFromLocation(cities[index]);
                } else {
                  _bookingController.setToLocation(cities[index]);
                }

                Navigator.pop(context);
              },
              child: Card(
                  child: ListTile(
                title: Text(cities[index], style: GoogleFonts.lato()),
              )),
            );
          },
        ),
      ),
    );
  }
}
