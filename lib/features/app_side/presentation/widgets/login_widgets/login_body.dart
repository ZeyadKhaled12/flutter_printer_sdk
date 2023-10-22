import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_printer_sdk/features/app_side/domain/entities/login.dart';
import 'package:flutter_printer_sdk/features/app_side/domain/usecases/login_uc.dart';
import 'package:flutter_printer_sdk/features/app_side/presentation/controller/app_side_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../config/colors.dart';
import '../../../../../core/utils/app_constance.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../web_side/presentation/screens/app_web_view_screen.dart';
import 'login_widegt_text_field.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key, required this.isLoading});
  final bool isLoading;

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController textEditingControllerName =
      TextEditingController(text: AppConstance.url);
  TextEditingController textEditingControllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Center(
          child: SingleChildScrollView(
              child: Column(
            children: [
              const Image(
                image: AssetImage(ImgAssets.easaccLogo),
                height: 110,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 25)),
              LoginWidgetTextField(
                hintText: 'رقم الهاتف او البريد الاكتروني',
                textEditingController: textEditingControllerName,
                isObscureText: false,
              ),
              // LoginWidgetTextField(
              //   hintText: 'كلمة السر',
              //   textEditingController: textEditingControllerPassword,
              //   isObscureText: true,
              // ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                margin: const EdgeInsets.only(left: 25, right: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AppWebViewScreen(
                                  url: textEditingControllerName.text)));
                      // context.read<AppSideBloc>().add(LoginEvent(
                      //     loginParameters: LoginParameters(
                      //         login: Login(
                      //             message: '',
                      //             emailOrPhone: textEditingControllerName.text,
                      //             password:
                      //                 textEditingControllerPassword.text))));
                    },
                    child: Text(
                      'Next',
                      style: GoogleFonts.notoSansGrantha(
                          color: Colors.white, fontSize: 20),
                    )),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                    onPressed: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AppWebViewScreen(url: AppConstance.url),
                          ));
                    },
                    child: Text(
                      'الدخول كزائر',
                      style: GoogleFonts.notoSans(
                          color: Colors.black, fontSize: 15),
                    )),
              ),
            ],
          )),
        ),
        if (widget.isLoading)
          Container(
            width: double.infinity,
            height: double.infinity,
            color: primaryColor.withOpacity(0.4),
            child: const Center(
              child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
            ),
          )
      ],
    );
  }
}
