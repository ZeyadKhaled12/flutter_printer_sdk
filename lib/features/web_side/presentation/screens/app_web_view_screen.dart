import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_printer_sdk/features/web_side/presentation/screens/printer_screen_online.dart';
import '../../../../core/utils/general_functions/convert_dto_to_images.dart';
import '../../data/models/dto_offline.dart/dto_online.dart';
import '../../data/models/print_object.dart';

class AppWebViewScreen extends StatelessWidget {
  const AppWebViewScreen({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(url)),
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
              javaScriptEnabled: true, useShouldOverrideUrlLoading: true),
        ),
        onWebViewCreated: (controller) {
          controller.addJavaScriptHandler(
              handlerName: 'print',
              callback: (args) async {
                DtoOnline dtoOnline = DtoOnline.fromJson(args[0]);
                List<PrintObject> printObjects =
                    ConvertDtoToImages(dtoOnline: dtoOnline).convert();
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrinterScreenOnline(
                        printObjects: printObjects,
                      ),
                    ));
              });
        },
      ),
    );
  }
}
