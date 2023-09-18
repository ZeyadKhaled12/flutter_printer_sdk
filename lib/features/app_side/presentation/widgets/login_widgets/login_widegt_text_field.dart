import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidgetTextField extends StatelessWidget {
  const LoginWidgetTextField(
      {super.key,
      required this.hintText,
      required this.isObscureText,
      required this.textEditingController});

  final String hintText;
  final bool isObscureText;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20, left: 25, right: 25),
        padding: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent),
        child: TextField(
            obscureText: isObscureText,
            controller: textEditingController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintTextDirection: TextDirection.rtl,
              hintStyle: GoogleFonts.notoSans(
                  fontSize: 18,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            cursorColor: Colors.black,
            textAlign: TextAlign.right,
            style: GoogleFonts.notoSans(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold)));
  }
}
