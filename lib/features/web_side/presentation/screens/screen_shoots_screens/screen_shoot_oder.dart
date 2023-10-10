import 'package:flutter/material.dart';
import 'package:flutter_printer_sdk/features/web_side/data/models/dto_offline/dto_offline.dart';
import 'package:screenshot/screenshot.dart';

import '../../widgets/screen_shoot_oder_widgets.dart/sso_widget_table.dart';
import '../../widgets/screen_shoot_oder_widgets.dart/sso_widget_top.dart';

class ScreenShootOrder extends StatelessWidget {
  const ScreenShootOrder(
      {super.key, required this.dto, required this.screenshotController});
  final DtoOffline dto;
  final ScreenshotController screenshotController;

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: screenshotController,
      child: SingleChildScrollView(
        child: Column(children: [
          SSOWidgetTop(dto: dto),
          const Padding(padding: EdgeInsets.only(bottom: 40)),
          SSOWidgetTable(dto: dto)
        ]),
      ),
    );
  }
}
