import 'package:esc_pos_printer/src/network_printer.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'dart:typed_data';
import 'package:image/image.dart';
import 'base_printer_pdf.dart';

class PrinterInvoice extends BasePrinterPdf {
  @override
  void getPrinter(
      {required NetworkPrinter printer,
      Uint8List? imgae,
      List<Uint8List>? images}) {
    if (images != null) {
      final Image? image1 = decodeImage(images[0]);
      final Image? image2 = decodeImage(images[1]);
      printer.image(image1!, align: PosAlign.center);
      printer.feed(2);
      printer.cut();
      printer.image(image2!, align: PosAlign.center);
      printer.feed(1);
    }
    printer.cut();
  }
}
