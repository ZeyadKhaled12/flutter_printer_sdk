import 'dart:typed_data';
import 'package:esc_pos_printer/esc_pos_printer.dart';

abstract class BasePrinterPdf {
  void getPrinter(
      {required NetworkPrinter printer,
      Uint8List? imgae,
      List<Uint8List>? images});
}
