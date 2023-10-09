import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_printer_sdk/features/web_side/presentation/screens/printer_screen_online.dart';
import 'package:native_pdf_renderer/native_pdf_renderer.dart';
import '../../../../core/utils/general_functions/convert_dto_to_images.dart';
import '../../../../core/utils/general_functions/using_printer.dart';
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
                for (var element in printObjects) {
                  Uint8List uint8list =
                      await convertBase64ToPDF(element.base64String);
                  UsingPrinter(
                          image: uint8list,
                          printingBrandState: element.printingBrandState)
                      .call();
                }
              });
        },
      ),
    );
  }
}

Future<Uint8List> convertBase64ToPDF(String base64String) async {
  PdfDocument document =
      await PdfDocument.openData(base64.decode(base64String));
  final page = await document.getPage(1);
  final pageImage = await page.render(width: page.width, height: page.height);
  return pageImage!.bytes;
}
