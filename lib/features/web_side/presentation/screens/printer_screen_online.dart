import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_printer_sdk/features/web_side/data/models/print_object.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../core/utils/general_functions/using_printer.dart';

class PrinterScreenOnline extends StatefulWidget {
  const PrinterScreenOnline({super.key, required this.printObjects});
  final List<PrintObject> printObjects;

  @override
  State<PrinterScreenOnline> createState() => _PrinterScreenOnlineState();
}

class _PrinterScreenOnlineState extends State<PrinterScreenOnline> {
  Widget pdfView = const Text('');
  ScreenshotController screenshotController = ScreenshotController();

  @override
  void initState() {
    for (var element in widget.printObjects) {
      Future.delayed(const Duration(milliseconds: 200), () async {
        pdfView = await convertBase64ToPDF(element.base64String);
        setState(() {});
      }).then((value) async {
        await screenshotController.capture().then((capturedImage) async {
          await UsingPrinter(
                  image: capturedImage,
                  printingBrandState: element.printingBrandState)
              .call(ipAddress: element.ipAddress, port: element.port);
        });
      });
    }
    Navigator.pop(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Screenshot(child: pdfView, controller: screenshotController);
  }
}

Future<Widget> convertBase64ToPDF(String base64String) async {
  final directory = await getExternalStorageDirectory();
  final path = directory!.path;
  final file = File('$path/my_pdf.pdf');
  await file.writeAsBytes(base64.decode(base64String), flush: true);
  return PDFView(
    filePath: file.path,
  );
}

Future<Image> convertFileToImage(File picture) async {
  List<int> imageBase64 = picture.readAsBytesSync();
  String imageAsString = base64Encode(imageBase64);
  Uint8List uint8list = base64.decode(imageAsString);
  Image image = Image.memory(uint8list);
  return image;
}
