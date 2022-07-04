import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:country_code_picker/country_code_picker.dart';

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
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: CountryCodePicker(
              initialSelection: "EG",
            ),
            hintText: "EG. 1118412254"
          ),
          validator: (value){
            if (value==null || value.isEmpty){
              return "Please enter a value";
            }
            else{
              return null;
            }
          },
        )
      ),
    );
  }
}
