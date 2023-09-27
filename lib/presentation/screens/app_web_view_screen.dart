import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_printer_sdk/core/utils/enums.dart';
import '../../data/models/dto_test/dto_test.dart';
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
          PrintingState printingState = PrintingState.end;
          controller.addJavaScriptHandler(
              handlerName: 'print',
              callback: (args) async {
                DtoTest dto = DtoTest.fromJson(args[0]);
                if (!dto.isPending! && dto.billDetails![0].isNew!) {
                  print('ENDING');
                  printingState = PrintingState.end;
                } else if (!dto.isPending! && !dto.billDetails![0].isNew!) {
                  print('PRINTING');
                  printingState = PrintingState.print;
                } else if (dto.isPending! && dto.billDetails![0].isNew!) {
                  print('ORDER');
                  printingState = PrintingState.order;
                }
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrinterScreen(
                        dto: DtoTest.fromJson(args[0]),
                        printingState: printingState,
                        isImin: false,
                      ),
                    ));
              });
        },
      ),
    );
  }
}
