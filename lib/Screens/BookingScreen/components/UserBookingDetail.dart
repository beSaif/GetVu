import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getvuapp/GetX/booking_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cool_dropdown/cool_dropdown.dart';

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
  final _nameController = TextEditingController();
  late String name;
  final _ageController = TextEditingController();
  late int age;

  late var gender;
  List dropdownItemList = [
    {'label': 'Male', 'value': 'Male'}, // label is required and unique
    {'label': 'Female', 'value': 'Female'},
    {'label': 'Other', 'value': 'Other'},
    {'label': 'Prefer Not to Say', 'value': 'Prefer Not to Say'},
  ];
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
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Name',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _nameController,
                  onChanged: (value) {
                    name = value;
                  },
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Age',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: _ageController,
                  onChanged: (value) {
                    age = int.parse(value);
                  },
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Gender',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CoolDropdown(
                  dropdownList: dropdownItemList,
                  onChange: (a) {
                    print(a);
                    gender = a['value'].toString();
                    print('changed');
                  },
                  dropdownHeight: 250,
                  resultHeight: 50,
                  resultWidth: 300,
                  dropdownItemGap: 1,
                  selectedItemBD: BoxDecoration(color: Colors.blue[100]),
                  selectedItemTS: GoogleFonts.poppins(
                    color: Colors.blue[300],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedItemTS: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  resultTS: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
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
                      _bookingController.updategotoPayment(false);
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
                      debugPrint(name);
                      debugPrint(age.toString());
                      debugPrint(gender);
                      setState(() {
                        _bookingController.updategoToTicketCards(true);
                      });
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
