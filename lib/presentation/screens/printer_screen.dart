import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

import '../../core/utils/general_functions/using_printer.dart';
import '../../data/models/dto_test/dto_test.dart';
import 'screen_shoots_screens/screen_shoot_invoice.dart';
import 'screen_shoots_screens/screen_shoot_oder.dart';

class PrinterScreen extends StatefulWidget {
  const PrinterScreen({super.key, required this.dto, required this.isImin});
  final DtoTest dto;
  final bool isImin;

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
              listImages: [capturedImageInvoice!, capturedImageOrder!],
              dto: widget.dto);
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
                  ScrenShotInvoice(
                      dto: widget.dto,
                      isImin: widget.isImin,
                      screenshotController: screenshotControllerInvoice),
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
