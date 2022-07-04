import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final String? buttonText;
  final VoidCallback? clickCallback;
  final Color? fontButtonColor;
  final Color? backgroundColor;
  final GlobalKey<FormState>? formKey;
  const myButton(
      {Key? key,
      required this.buttonText,
      this.clickCallback,
      required this.fontButtonColor,
      required this.backgroundColor,
        required this.formKey,
      })
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20.0,bottom: 20, left: 15,right: 15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          minimumSize: const Size.fromHeight(50),
        ),
        onPressed: () {
          if (formKey!.currentState!.validate()){
            clickCallback!();
          }
          },
        child: Text(
          buttonText!,
          style: TextStyle(fontSize: 19,color: fontButtonColor),
        ),
      ),
    );
  }
}
