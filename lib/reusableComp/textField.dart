import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  final String? text;
  final String? hint;

  const textField({Key? key,this.text,this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:
      InputDecoration(
        labelText: text,
        hintText: hint,
      ),
    );
  }
}
