import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart' as pw;

import '../../../features/web_side/data/models/dto_offline.dart/dto_online.dart';
import '../../../features/web_side/data/models/print_object.dart';
import 'convert_brand_to_state.dart';

class ConvertDtoToImages {
  final DtoOnline dtoOnline;

  ConvertDtoToImages({required this.dtoOnline});

  List<PrintObject> convert() {
    List<PrintObject> printObjects = [];
    if (dtoOnline.data != null) {
      printObjects.add(PrintObject(
          printingBrandState:
              ConvertBrandToState(brand: dtoOnline.brand!).getBrandState(),
          uint8list: convertBase64ToImage(dtoOnline.data!),
          ipAddress: dtoOnline.ipAddress!,
          port: int.parse(dtoOnline.port!)));
    }
    if (dtoOnline.kitchenRdlcs![0].data != null) {
      dtoOnline.kitchenRdlcs?.forEach((element) {
        printObjects.add(PrintObject(
            printingBrandState:
                ConvertBrandToState(brand: element.brand!).getBrandState(),
            uint8list: convertBase64ToImage(element.data!),
            ipAddress: dtoOnline.ipAddress!,
            port: int.parse(dtoOnline.port!)));
      });
    }
    return printObjects;
  }

  Uint8List convertBase64ToImage(String base64String) {
    Uint8List uint8list = base64Decode(base64String);
    return base64Decode(base64String);
  }
}
