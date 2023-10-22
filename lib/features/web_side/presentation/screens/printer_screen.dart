import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_printer_sdk/core/utils/enums.dart';
import 'package:flutter_printer_sdk/features/web_side/data/models/dto_offline/dto_offline.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../core/utils/general_functions/using_printer.dart';
import 'screen_shoots_screens/screen_shoot_invoice.dart';
import 'screen_shoots_screens/screen_shoot_oder.dart';

class PrinterScreen extends StatefulWidget {
  const PrinterScreen(
      {super.key,
      required this.dto,
      required this.printingState,
      required this.isImin});
  final DtoOffline dto;
  final bool isImin;
  final PrintingState printingState;

  @override
  State<PrinterScreen> createState() => _PrinterScreenState();
}

class _PrinterScreenState extends State<PrinterScreen> {
  ScreenshotController screenshotControllerInvoice = ScreenshotController();
  ScreenshotController screenshotControllerOrder = ScreenshotController();

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () async {
      await screenshotControllerInvoice
          .capture()
          .then((capturedImageInvoice) async {
        await screenshotControllerOrder
            .capture()
            .then((capturedImageOrder) async {
          printFun(
              widget.printingState, capturedImageInvoice, capturedImageOrder);
        });
      });
    });

    super.initState();
  }

  Future<void> printFun(PrintingState printingState,
      Uint8List? capturedImageInvoice, Uint8List? capturedImageOrder) async {
    switch (printingState) {
      case PrintingState.order:
        usingPrintFun(capturedImageOrder!,
            ipAddress: widget.dto.billDetails![0].item!.printer!.ipAddress!,
            port: int.parse(widget.dto.billDetails![0].item!.printer!.port!));
      case PrintingState.print:
        usingPrintFun(capturedImageInvoice!,
            ipAddress: widget.dto.billDetails![0].item!.printer!.ipAddress!,
            port: int.parse(widget.dto.billDetails![0].item!.printer!.port!));
      case PrintingState.end:
        usingPrintFun(capturedImageInvoice!,
            ipAddress: widget.dto.billDetails![0].item!.printer!.ipAddress!,
            port: int.parse(widget.dto.billDetails![0].item!.printer!.port!));
        usingPrintFun(capturedImageOrder!,
            ipAddress: widget.dto.billDetails![0].item!.printer!.ipAddress!,
            port: int.parse(widget.dto.billDetails![0].item!.printer!.port!));
    }
  }

  Future<void> usingPrintFun(Uint8List image,
      {required String ipAddress, required int port}) async {
    await UsingPrinter(
            image: image,
            printingBrandState: widget.isImin
                ? PrintingBrandState.imin
                : PrintingBrandState.escpos)
        .call(ipAddress: ipAddress, port: port);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
            width: widget.isImin ? 310 : 140,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.printingState == PrintingState.end ||
                      widget.printingState == PrintingState.print)
                    ScrenShotInvoice(
                        dto: widget.dto,
                        isImin: widget.isImin,
                        screenshotController: screenshotControllerInvoice),
                  if (widget.printingState == PrintingState.end ||
                      widget.printingState == PrintingState.order)
                    ScreenShootOrder(
                        dto: widget.dto,
                        screenshotController: screenshotControllerOrder)
                ],
              ),
            )),
      ),
    );
  }
}
