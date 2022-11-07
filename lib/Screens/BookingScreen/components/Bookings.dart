import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getvuapp/GetX/booking_controller.dart';
import 'package:getvuapp/GetX/other_controllers.dart';
import 'package:getvuapp/Screens/BookingScreen/components/Boarding.dart';
import 'package:getvuapp/Screens/BookingScreen/components/Dropping.dart';
import 'package:getvuapp/Screens/BookingScreen/components/TicketsCard.dart';
import 'package:getvuapp/Screens/BookingScreen/components/UserBookingDetail.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingsSection extends StatefulWidget {
  const BookingsSection({super.key});

  @override
  State<BookingsSection> createState() => _BookingsSectionState();
}

class _BookingsSectionState extends State<BookingsSection>
    with TickerProviderStateMixin {
  final OtherController _otherController = Get.put(
    OtherController(),
    permanent: false,
  );
  final BookingController _bookingController = Get.put(
    BookingController(),
    permanent: false,
  );
  final Image image = Image.asset('assets/Images/My project.png');

  @override
  void initState() {
    super.initState();
    _otherController.tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 20,
        ),
        GetBuilder<BookingController>(builder: (context) {
          return _bookingController.goToTicketCards
              ? const TicketsCard()
              : Container(
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
                    GetBuilder<BookingController>(
                      builder: (controller) {
                        return _bookingController.goToUserDetails == true
                            ? const UserBookingDetail()
                            : DefaultTabController(
                                length: 2,
                                child: Column(
                                  children: [
                                    TabBar(
                                      controller:
                                          _otherController.tabController,
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
                                    SizedBox(
                                      height: 450,
                                      child: TabBarView(
                                        controller:
                                            _otherController.tabController,
                                        children: const [
                                          BoardingSection(),
                                          DroppingSection(),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                      },
                    ),
                  ]),
                );
        }),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
