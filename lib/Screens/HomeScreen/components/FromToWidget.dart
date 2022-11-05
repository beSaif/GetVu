import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getvuapp/GetX/booking_controller.dart';
import 'package:getvuapp/Screens/HomeScreen/components/FromToButton.dart';

enum ButtonType { from, to }

class FromToWidget extends StatefulWidget {
  const FromToWidget({super.key});

  @override
  State<FromToWidget> createState() => _FromToWidgetState();
}

class _FromToWidgetState extends State<FromToWidget> {
  final BookingController _bookingController =
      Get.put(BookingController(), permanent: false);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 18,
      color: Colors.transparent,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.95),

          //border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GetBuilder<BookingController>(
                builder: (_) => FromtoButton(
                    buttonType: ButtonType.from,
                    location: _bookingController.fromLocation),
              ),
              const VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
              GetBuilder<BookingController>(
                builder: (_) => FromtoButton(
                    buttonType: ButtonType.to,
                    location: _bookingController.toLocation),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
