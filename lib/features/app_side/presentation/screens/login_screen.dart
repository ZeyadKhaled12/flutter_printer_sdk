import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/login_widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تسجيل الدخول',
          style: GoogleFonts.notoSans(
              color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const LoginBody(isLoading: false),
    );
  }
}
