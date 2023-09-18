import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_printer_sdk/core/services/services_locator.dart';
import 'package:flutter_printer_sdk/core/usecase/base_use_case.dart';
import 'package:flutter_printer_sdk/features/app_side/presentation/controller/app_side_bloc.dart';
import 'package:flutter_printer_sdk/presentation/screens/app_web_view_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/general_widgets/general_widget_anaimation_opacity.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Center(
        child: BlocProvider(
          create: (context) => sl<AppSideBloc>()
            ..add(const CheckIfLoginBeforeEvent(noParameters: NoParameters())),
          child: BlocBuilder<AppSideBloc, AppSideState>(
            builder: (context, state) {
              return GeneralWidgetAnimationOpacity(
                  widgetOpacity: const Image(
                      image: AssetImage(ImgAssets.easaccLogo), height: 90),
                  seconds: 2,
                  onEnd: () async {
                    await Future.delayed(const Duration(seconds: 3), () async {
                      await SystemChrome.setEnabledSystemUIMode(
                          SystemUiMode.manual,
                          overlays: SystemUiOverlay.values);
                      if (mounted) {
                        if (state.isLoginBefore) {
                          final SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          await Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AppWebViewScreen(
                                    url: prefs.getString('url')!),
                              ));
                        } else {
                          await Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ));
                        }
                      }
                    });
                  });
            },
          ),
        ),
      )),
    );
  }
}

/*

GeneralWidgetAnimationOpacity(
            widgetOpacity: const Image(
                image: AssetImage(ImgAssets.easaccLogo), height: 90),
            seconds: 2,
            onEnd: () async {
              await Future.delayed(const Duration(seconds: 3), () async {
                await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                    overlays: SystemUiOverlay.values);
                if (mounted) {
                  await Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                }
              });
            })
*/
