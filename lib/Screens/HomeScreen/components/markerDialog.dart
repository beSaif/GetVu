import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getvuapp/GetX/other_controllers.dart';
import 'package:getvuapp/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

MarkerDialog(
    {required String title,
    required String toI,
    required String goals,
    required String pos}) async {
  final OtherController _otherController =
      Get.put(OtherController(), permanent: false);
  return showDialog<void>(
    context: navigatorKey.currentContext!,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      final Image image = Image.asset('assets/Images/My project.png');
      return AlertDialog(
        backgroundColor: Colors.transparent,
        contentPadding: const EdgeInsets.all(0.0),
        //title: const Text('AlertDialog Title'),
        content: Container(
          height: 40.h,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
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
                              title,
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              pos,
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 13,
                                //fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Topic of Interest: ',
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          toI,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 100.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Goals: ',
                            style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              goals,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 16,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () async {
                  Navigator.pop(context);
                  _otherController.updateNavBarController(1);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.green.withOpacity(0.5),
                  ),
                  width: 50.w,
                  height: 5.h,
                  child: Center(
                      child: Text(
                    "BOOK",
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
