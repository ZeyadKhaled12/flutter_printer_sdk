import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_printer_sdk/core/utils/enums.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../core/utils/general_functions/using_printer.dart';
import '../../data/models/dto_test/dto_test.dart';
import 'screen_shoots_screens/screen_shoot_invoice.dart';
import 'screen_shoots_screens/screen_shoot_oder.dart';

class PrinterScreen extends StatefulWidget {
  const PrinterScreen(
      {super.key,
      required this.dto,
      required this.isImin,
      required this.printingState});
  final DtoTest dto;
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
          UsingPrinter usingPrinter = UsingPrinter(
              listImages: listImage(widget.printingState, capturedImageInvoice,
                  capturedImageOrder));
          if (widget.isImin) {
            await usingPrinter.printingImin();
          } else {
            await usingPrinter.printingEscPos();
          }
        });
      });
    });

    super.initState();
  }

  List<Uint8List>? listImage(PrintingState printingState,
      Uint8List? capturedImageInvoice, Uint8List? capturedImageOrder) {
    switch (printingState) {
      case PrintingState.order:
        return [capturedImageInvoice!, capturedImageOrder!];
      case PrintingState.print:
        return [capturedImageInvoice!];
      case PrintingState.end:
        return [capturedImageOrder!];
    }
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
