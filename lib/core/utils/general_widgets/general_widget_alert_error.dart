import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeneralWidgetAlertError extends StatelessWidget {
  const GeneralWidgetAlertError({super.key, required this.error});
  final String error;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        error,
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
      ),
      content: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Ok',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 16,
              ))),
    );
  }
}
