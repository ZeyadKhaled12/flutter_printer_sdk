import 'dart:convert';
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
          base64String: dtoOnline.data!,
          ipAddress: dtoOnline.ipAddress!,
          port: int.parse(dtoOnline.port!)));
    }
    if (dtoOnline.kitchenRdlcs![0].data != null) {
      dtoOnline.kitchenRdlcs?.forEach((element) {
        printObjects.add(PrintObject(
            printingBrandState:
                ConvertBrandToState(brand: element.brand!).getBrandState(),
            base64String: element.data!,
            ipAddress: dtoOnline.ipAddress!,
            port: int.parse(dtoOnline.port!)));
      });
    }
    return printObjects;
  }
}
