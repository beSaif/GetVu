import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getvuapp/GetX/booking_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardingSection extends StatefulWidget {
  const BoardingSection({super.key});

  @override
  State<BoardingSection> createState() => _BoardingSectionState();
}

class _BoardingSectionState extends State<BoardingSection> {
  final BookingController _bookingController = Get.put(
    BookingController(),
    permanent: false,
  );
  bool? checkBoxValue = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Your Preferred Boarding Point',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Checkbox(
                    value: checkBoxValue,
                    activeColor: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onChanged: (bool? newValue) {
                      setState(() {
                        checkBoxValue = newValue;
                      });
                    }),
                Text(
                  'Omni Bus Stand',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'All Nearby Boarding Point',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget checkboxList() {
//   bool? checkBoxValue = true;
//   return Row(
//     children: [
//       Checkbox(
//           value: checkBoxValue,
//           activeColor: Colors.blue[100],
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//           onChanged: (bool? newValue) {
//             checkBoxValue = newValue;
//           }),
//       Text(
//         'Omni Bus Stand',
//         style: GoogleFonts.poppins(
//           color: Colors.black,
//           fontSize: 14,
//           //fontWeight: FontWeight.bold,
//         ),
//       ),
//     ],
//   );
// }
