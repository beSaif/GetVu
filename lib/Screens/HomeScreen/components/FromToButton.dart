import 'package:flutter/material.dart';
import 'package:getvuapp/Screens/HomeScreen/components/FromToWidget.dart';
import 'package:getvuapp/Screens/HomeScreen/components/SelectCitySheet.dart';
import 'package:google_fonts/google_fonts.dart';

class FromtoButton extends StatelessWidget {
  final String location;
  final ButtonType buttonType;

  const FromtoButton({
    Key? key,
    required this.location,
    required this.buttonType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String typeText = '';

    if (buttonType == ButtonType.from) {
      typeText = 'From';
    } else {
      typeText = 'To';
    }
    return Expanded(
      flex: 2,
      child: GestureDetector(
        onTap: () {
          debugPrint('$typeText pressed');
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.919,
                  child: SelectCity(
                    buttonType: buttonType,
                  ));
            },
          );
        },
        child: Container(
          // Added color paramatter so that button works when clicked anywhere
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    location,
                    style: GoogleFonts.lato(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                typeText,
                style:
                    GoogleFonts.lato(fontSize: 10, fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
