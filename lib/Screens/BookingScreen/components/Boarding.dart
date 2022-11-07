import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getvuapp/GetX/booking_controller.dart';
import 'package:getvuapp/GetX/other_controllers.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardingSection extends StatefulWidget {
  const BoardingSection({super.key});

  @override
  State<BoardingSection> createState() => _BoardingSectionState();
}

class _BoardingSectionState extends State<BoardingSection> {
  List boardingPoint = [
    'Omni Bus Stand',
    'Gandhipuram Bus Stand',
    'HP Bus Stand',
    'Lorry road Bus Stand'
  ];
  final BookingController _bookingController = Get.put(
    BookingController(),
    permanent: false,
  );
  final OtherController _otherController = Get.put(
    OtherController(),
    permanent: false,
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Button

                const SizedBox(
                  height: 10,
                ),
                Visibility(
                    visible: _bookingController.prefboardingLocation == ''
                        ? false
                        : true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                value: true,
                                activeColor: Colors.blue[100],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                onChanged: (bool? newValue) {
                                  setState(() {});
                                }),
                            Text(
                              _bookingController.prefboardingLocation,
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
                      ],
                    )),
                Text(
                  'All Nearby Boarding Point',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: boardingPoint.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Checkbox(
                              value: _bookingController.boardingLocation ==
                                      boardingPoint[index]
                                  ? true
                                  : false,
                              activeColor: Colors.blue[100],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onChanged: (bool? newValue) {
                                setState(() {
                                  _bookingController.boardingLocation =
                                      boardingPoint[index];

                                  _bookingController.setprefboardingLocation(
                                      boardingPoint[index]);
                                });
                              }),
                          Text(
                            boardingPoint[index],
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 14,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: FloatingActionButton.extended(
                backgroundColor: Colors.blue[200],
                onPressed: () {
                  if (_bookingController.boardingLocation != '') {
                    _otherController.updateTabController(1);
                  } else {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Select a boarding location.'),
                    ));
                  }
                },
                label: Text(
                  'Next',
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
