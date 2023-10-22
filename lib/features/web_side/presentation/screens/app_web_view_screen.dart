import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_printer_sdk/core/utils/enums.dart';
import 'package:flutter_printer_sdk/core/utils/general_functions/convert_brand_to_state.dart';
import 'package:native_pdf_renderer/native_pdf_renderer.dart';
import '../../data/models/dto_offline/dto_offline.dart';
import 'printer_screen.dart';

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
                PrintingState printingState = PrintingState.end;
                DtoOffline dto = DtoOffline.fromJson(args[0]);
                if (!dto.isPending! && dto.billDetails![0].isNew!) {
                  printingState = PrintingState.end;
                } else if (!dto.isPending! && !dto.billDetails![0].isNew!) {
                  printingState = PrintingState.print;
                } else if (dto.isPending! && dto.billDetails![0].isNew!) {
                  printingState = PrintingState.order;
                }
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrinterScreen(
                          dto: dto,
                          printingState: printingState,
                          isImin: ConvertBrandToState(
                                      brand: dto.billDetails![0].item!.printer!
                                          .printerBrand!.name!)
                                  .getBrandState() ==
                              PrintingBrandState.imin),
                    ));
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
