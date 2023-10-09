import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'dart:typed_data';
import 'package:image/image.dart';
import 'base_printer_pdf.dart';

class PrinterEscPos extends BasePrinterPdf {
  @override
  void getPrinter(
      {required NetworkPrinter printer,
      List<int>? image,
      List<Uint8List>? images}) async {
    if (images != null) {
      final Image? image1 = decodeImage(images[0]);
      final Image? image2 = decodeImage(images[1]);
      printer.image(image1!, align: PosAlign.center);
      printer.feed(2);
      printer.cut();
      printer.image(image2!, align: PosAlign.center);
      printer.feed(1);
    }
    if (image != null) {
      final Image? imageDecode = decodeImage(image);
      printer.image(imageDecode!, align: PosAlign.center);
      printer.feed(1);
    }
    printer.cut();
  }
}
