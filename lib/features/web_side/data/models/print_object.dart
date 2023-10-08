import 'dart:typed_data';

import 'package:flutter_printer_sdk/core/utils/enums.dart';

class PrintObject {
  final PrintingBrandState printingBrandState;
  final Uint8List uint8list;
  final String ipAddress;
  final int port;

  PrintObject(
      {required this.printingBrandState,
      required this.uint8list,
      required this.ipAddress,
      required this.port});
}
