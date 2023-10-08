import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import '../../../../core/utils/general_functions/convert_dto_to_images.dart';
import '../../../../core/utils/general_functions/using_printer.dart';
import '../../data/models/dto_offline.dart/dto_online.dart';
import '../../data/models/print_object.dart';

class AppWebViewScreen extends StatelessWidget {
  const AppWebViewScreen({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(url)),
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
              javaScriptEnabled: true, useShouldOverrideUrlLoading: true),
        ),
        onWebViewCreated: (controller) {
          controller.addJavaScriptHandler(
              handlerName: 'print',
              callback: (args) async {
                DtoOnline dtoOnline = DtoOnline.fromJson(args[0]);
                List<PrintObject> printObjects =
                    ConvertDtoToImages(dtoOnline: dtoOnline).convert();
                // await Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => TestScreenPrinting(
                //         images: printObjects,
                //       ),
                //     ));

                for (var element in printObjects) {
                  UsingPrinter(
                          image: element.uint8list,
                          printingBrandState: element.printingBrandState)
                      .call(ipAddress: element.ipAddress, port: element.port);
                }
              });
        },
      ),
    );
  }
}


/*
                Map map = args[0];
                map['data'] = 'lol';
                map['kitchenRdlcs'][0]['data'] = 'lol';
                log(jsonEncode(map));
                print('GET IN GET IN GET IN');
                DtoTest dto = DtoTest.fromJson(args[0]);
                if (!dto.isPending! && dto.billDetails![0].isNew!) {
                  print('ENDING');
                  printingState = PrintingState.end;
                } else if (!dto.isPending! && !dto.billDetails![0].isNew!) {
                  print('PRINTING');
                  printingState = PrintingState.print;
                } else if (dto.isPending! && dto.billDetails![0].isNew!) {
                  print('ORDER');
                  printingState = PrintingState.order;
                }
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrinterScreen(
                        dto: DtoTest.fromJson(args[0]),
                        printingState: printingState,
                        isImin: false,
                      ),
                    ));
*/
