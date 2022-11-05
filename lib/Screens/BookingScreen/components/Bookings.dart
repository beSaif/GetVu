import 'package:flutter/material.dart';
import 'package:getvuapp/Screens/BookingScreen/components/Boarding.dart';
import 'package:getvuapp/Screens/BookingScreen/components/Dropping.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingsSection extends StatefulWidget {
  const BookingsSection({super.key});

  @override
  State<BookingsSection> createState() => _BookingsSectionState();
}

class _BookingsSectionState extends State<BookingsSection> {
  final Image image = Image.asset('assets/Images/My project.png');
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 620,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(children: [
            const Padding(padding: EdgeInsets.all(15)),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  foregroundImage: image.image,
                  backgroundColor: Colors.blue[100],
                  radius: 35,
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
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Text(
                          'Boarding',
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Dropping',
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 200,
                    child: TabBarView(
                      children: [
                        BoardingSection(),
                        DroppingSection(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
