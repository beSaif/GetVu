import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FromToWidget extends StatefulWidget {
  const FromToWidget({super.key});

  @override
  State<FromToWidget> createState() => _FromToWidgetState();
}

class _FromToWidgetState extends State<FromToWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 18,
      color: Colors.transparent,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.95),

          //border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              FromtoButton(buttonType: ButtonType.from, location: 'Bangalore'),
              VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
              FromtoButton(buttonType: ButtonType.to, location: 'Kerala'),
            ],
          ),
        ),
      ),
    );
  }
}

enum ButtonType { from, to }

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
          print('$typeText pressed');
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Container(child: const SelectCity());
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

class SelectCity extends StatefulWidget {
  const SelectCity({
    Key? key,
  }) : super(key: key);

  @override
  State<SelectCity> createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Select City'),
        ),
      ),
    );
  }
}
