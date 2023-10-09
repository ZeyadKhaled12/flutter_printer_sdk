import 'dart:io';

import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_printer_sdk/core/utils/enums.dart';
import 'printer_esc_pos.dart';

class UsingPrinter {
  final Uint8List? image;
  final List<Uint8List>? listImages;
  final PrintingBrandState? printingBrandState;

  const UsingPrinter({this.image, this.listImages, this.printingBrandState});

  Future<void> printingEscPos(
      {String ipAddress = '192.168.1.120', int port = 9100}) async {
    const PaperSize paper = PaperSize.mm80;
    final profile = await CapabilityProfile.load();
    final printer = NetworkPrinter(paper, profile);

    final PosPrintResult res = await printer.connect(ipAddress, port: port);

    if (res == PosPrintResult.success) {
      PrinterEscPos()
          .getPrinter(printer: printer, images: listImages, image: image);
      printer.disconnect();
    }
  }

  Future<void> call(
      {String ipAddress = '192.168.1.120', int port = 9100}) async {
    switch (printingBrandState) {
      case PrintingBrandState.escpos:
        await printingEscPos(ipAddress: ipAddress, port: port);
      case PrintingBrandState.imin:
        await printingImin();
      case null:
        return;
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
