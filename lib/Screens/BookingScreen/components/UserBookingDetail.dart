import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getvuapp/GetX/booking_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class UserBookingDetail extends StatefulWidget {
  const UserBookingDetail({super.key});

  @override
  State<UserBookingDetail> createState() => _UseBookingrDetaliState();
}

class _UseBookingrDetaliState extends State<UserBookingDetail> {
  final BookingController _bookingController = Get.put(
    BookingController(),
    permanent: false,
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                // TODO: code for accepting user booking details
                Text('User Booking detail ')
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  FloatingActionButton.extended(
                    backgroundColor: Colors.blue[200],
                    onPressed: () {
                      _bookingController.updategoTouserDetails(false);
                    },
                    label: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),

                  // TODO: Navigate to payment screen
                  FloatingActionButton.extended(
                    backgroundColor: Colors.blue[200],
                    onPressed: () {
                      debugPrint('Navigate to Payment Screen');
                    },
                    label: Text(
                      'Confirm Booking',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
