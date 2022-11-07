import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketsCard extends StatefulWidget {
  const TicketsCard({super.key});

  @override
  State<TicketsCard> createState() => _TicketsCardState();
}

class _TicketsCardState extends State<TicketsCard> {
  final Image image = Image.asset('assets/Images/My project.png');
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Your Ticket',
                    style: GoogleFonts.inter(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Stack(
                  children: [
                    Container(
                      width: 302,
                      height: 450,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 45,
                            ),
                            Text(
                              'Passenger 1',
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  foregroundImage: image.image,
                                  backgroundColor: Colors.blue[100],
                                  radius: 25,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rishi Singh',
                                      style: GoogleFonts.lato(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'CXO at XYZ Company',
                                      style: GoogleFonts.lato(
                                        color: Colors.black,
                                        fontSize: 13,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                const Icon(
                                  Icons.check_circle_outline,
                                  color: Color.fromARGB(255, 103, 173, 230),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Passenger 2',
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  foregroundImage: image.image,
                                  backgroundColor: Colors.blue[100],
                                  radius: 25,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Anil Rathore',
                                      style: GoogleFonts.lato(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'CEO at ABC Company',
                                      style: GoogleFonts.lato(
                                        color: Colors.black,
                                        fontSize: 13,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                const Icon(
                                  Icons.check_circle_outline,
                                  color: Color.fromARGB(255, 103, 173, 230),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Dropping point',
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  'Gate',
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Omini Bus Stand',
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'A',
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 125,
                              child: Image.asset('assets/Images/barcode.png'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(22, -39),
                      child: Container(
                        width: 260,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 1),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'From',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    'CBE',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 35,
                              ),
                              const VerticalDivider(
                                color: Colors.black,
                                thickness: 1,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'To',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    'BLR',
                                    style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Positioned(
            //   bottom: 0,
            //   right: 0,
            //   left: 0,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       FloatingActionButton.extended(
            //         backgroundColor: Colors.blue[200],
            //         onPressed: () {
            //           _bookingController.updategoTouserDetails(false);
            //         },
            //         label: const Icon(
            //           Icons.arrow_back,
            //           color: Colors.black,
            //         ),
            //       ),

            //       FloatingActionButton.extended(
            //         backgroundColor: Colors.blue[200],
            //         onPressed: () {
            //           debugPrint('Navigate to Payment Screen');
            //           debugPrint(name);
            //           debugPrint(age.toString());
            //           debugPrint(gender);
            //         },
            //         label: Text(
            //           'Confirm Booking',
            //           style: GoogleFonts.lato(
            //             color: Colors.black,
            //             fontSize: 16,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
