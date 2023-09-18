import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../data/models/dto_test/dto_test.dart';
import 'printer_invoice.dart';

class UsingPrinter {
  final DtoTest? dto;
  final Uint8List? image;
  final List<Uint8List>? listImages;

  const UsingPrinter({this.dto, this.image, this.listImages});

  Future<void> printingEscPos() async {
    const PaperSize paper = PaperSize.mm80;
    final profile = await CapabilityProfile.load();
    final printer = NetworkPrinter(paper, profile);

    const String ipAddress = '192.168.1.120';
    const int port = 9100;
    final PosPrintResult res = await printer.connect(ipAddress, port: port);

    if (res == PosPrintResult.success) {
      PrinterInvoice()
          .getPrinter(printer: printer, images: listImages, imgae: image);
      printer.disconnect();
    }
  }

  Future<void> printingImin() async {
    const MethodChannel channel = MethodChannel('com.imin.printersdk');
    ValueNotifier<String> stateNotifier = ValueNotifier("");
    stateNotifier.value = await channel.invokeMethod("sdkInit");
    if (listImages != null) {
      stateNotifier.value = await channel.invokeMethod("printBitmap", {
        'image': listImages![0],
        'type': 'image/png',
        'name': 'invoice.png'
      });
      stateNotifier.value = await channel.invokeMethod("printBitmap",
          {'image': listImages![1], 'type': 'image/png', 'name': 'order.png'});
    } else if (image != null) {
      stateNotifier.value = await channel.invokeMethod("printBitmap",
          {'image': image, 'type': 'image/png', 'name': 'invoice.png'});
    }
  }
}
