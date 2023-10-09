import 'package:flutter_printer_sdk/core/utils/enums.dart';

class PrintObject {
  final PrintingBrandState printingBrandState;
  final String base64String;
  final String ipAddress;
  final int port;

  PrintObject(
      {required this.printingBrandState,
      required this.base64String,
      required this.ipAddress,
      required this.port});
}
