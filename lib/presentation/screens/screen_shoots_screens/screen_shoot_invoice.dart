import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

import '../../../data/models/dto_test/dto_test.dart';
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
  final DtoTest dto;
  final bool isImin;

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: screenshotController,
      child: SingleChildScrollView(
        child: Column(children: [
          SSIWidgetTitle(dto: dto),
          const Divider(color: Colors.black, thickness: 1, height: 10),
          SSIWidgetCachier(dto: dto),
          const Divider(color: Colors.black, thickness: 4, height: 20),
          SSIWidgetProducts(dto: dto),
          const Divider(color: Colors.black, thickness: 1),
          SSIWidgetPrices(dto: dto, isImin: isImin),
          const Divider(color: Colors.black, thickness: 1.5),
          if (dto.qrCode != null) SSIWidgetQRCode(dto: dto),
          const Divider(color: Colors.black, thickness: 5),
          const Center(
              child: Text('Powered By Easacc.com',
                  style: TextStyle(color: Colors.black, fontSize: 11)))
        ]),
      ),
    );
  }
}
