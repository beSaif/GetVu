import 'package:flutter/material.dart';
import 'package:getvuapp/Screens/BookingScreen/components/Bookings.dart';
import 'package:getvuapp/Screens/BookingScreen/components/Messages.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingScreenBody extends StatefulWidget {
  const BookingScreenBody({super.key});

  @override
  State<BookingScreenBody> createState() => _BookingScreenBodyState();
}

class _BookingScreenBodyState extends State<BookingScreenBody> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          // appBar: AppBar(
          //   title: Text('T A B  B A R'),
          // ),
          body: Column(
            children: [
              TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text(
                      'Messages',
                      style: GoogleFonts.lato(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Bookings',
                      style: GoogleFonts.lato(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    MessagesSection(),
                    //ChatScreen(),
                    BookingsSection(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
