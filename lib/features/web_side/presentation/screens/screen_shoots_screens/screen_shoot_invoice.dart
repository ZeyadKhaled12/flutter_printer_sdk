import 'package:flutter/material.dart';
import 'package:flutter_printer_sdk/features/web_side/data/models/dto_offline/dto_offline.dart';
import 'package:screenshot/screenshot.dart';
import '../../widgets/screen_shoot_invoice_widgets/ssi_widget_cachier.dart';
import '../../widgets/screen_shoot_invoice_widgets/ssi_widget_prices.dart';
import '../../widgets/screen_shoot_invoice_widgets/ssi_widget_products.dart';
import '../../widgets/screen_shoot_invoice_widgets/ssi_widget_qr_code.dart';
import '../../widgets/screen_shoot_invoice_widgets/ssi_widget_title.dart';

class ScrenShotInvoice extends StatelessWidget {
  const ScrenShotInvoice(
      {super.key,
      required this.screenshotController,
      required this.dto,
      required this.isImin});
  final ScreenshotController screenshotController;
  final DtoOffline dto;
  final bool isImin;

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: screenshotController,
      child: SingleChildScrollView(
        child: Column(children: [
          SSIWidgetTitle(dto: dto),
          const Divider(
              color: Color.fromRGBO(0, 0, 0, 1), thickness: 1, height: 10),
          SSIWidgetCachier(dto: dto),
          const Divider(color: Colors.black, thickness: 2, height: 10),
          SSIWidgetProducts(dto: dto),
          const Divider(color: Colors.black, thickness: 1, height: 0),
          SSIWidgetPrices(dto: dto, isImin: isImin),
          if (dto.qrCode != null)
            const Divider(color: Colors.black, thickness: 1.5),
          if (dto.qrCode != null) SSIWidgetQRCode(dto: dto),
          const Padding(
              padding: EdgeInsets.only(top: 4, bottom: 1),
              child: Divider(color: Colors.black, thickness: 2, height: 0)),
          const Text('Powered By Easacc.com',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 8))
        ]),
      ),
    );
  }
}
