import 'package:flutter_printer_sdk/core/utils/enums.dart';

class ConvertBrandToState {
  final String brand;

  ConvertBrandToState({required this.brand});

  PrintingBrandState getBrandState() {
    if (brand == 'Epson') {
      return PrintingBrandState.escpos;
    } else if (brand == 'Imin') {
      return PrintingBrandState.imin;
    }
    return PrintingBrandState.escpos;
  }
}
