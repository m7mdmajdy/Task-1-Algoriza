import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
class countryCode extends StatelessWidget {
  const countryCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12)
        ),
        child: InternationalPhoneNumberInput(
          onInputChanged: (value){},
          hintText: "EG. 812345678",
        ),
      ),
    );
  }
}
