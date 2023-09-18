import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_printer_sdk/core/utils/general_widgets/general_widget_alert_error.dart';
import 'package:flutter_printer_sdk/presentation/screens/app_web_view_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/services/services_locator.dart';
import '../../../../core/utils/enums.dart';
import '../controller/app_side_bloc.dart';
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
      body: BlocProvider(
        create: (context) => sl<AppSideBloc>(),
        child: BlocConsumer<AppSideBloc, AppSideState>(
          listener: (context, state) {
            if (state.appSideRequestState == RequestState.error) {
              showDialog(
                  context: context,
                  builder: (context) => GeneralWidgetAlertError(
                      error: state.errorAppSideMessage));
            }
            if (state.login.data != null) {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          AppWebViewScreen(url: state.login.data!.url)));
            }
          },
          buildWhen: (previous, current) =>
              previous.appSideRequestState != current.appSideRequestState,
          listenWhen: (previous, current) =>
              previous.appSideRequestState != current.appSideRequestState,
          builder: (context, state) {
            switch (state.appSideRequestState) {
              case RequestState.loading:
                return const LoginBody(isLoading: true);
              case RequestState.loaded:
                return const LoginBody(isLoading: false);
              case RequestState.error:
                return const LoginBody(isLoading: false);
            }
          },
        ),
      ),
    );
  }
}
