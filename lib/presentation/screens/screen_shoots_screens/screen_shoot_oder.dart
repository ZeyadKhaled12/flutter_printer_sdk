import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

import '../../../data/models/dto_test/dto_test.dart';
import '../../widgets/screen_shoot_oder_widgets.dart/sso_widget_table.dart';
import '../../widgets/screen_shoot_oder_widgets.dart/sso_widget_top.dart';

class ScreenShootOrder extends StatelessWidget {
  const ScreenShootOrder(
      {super.key, required this.dto, required this.screenshotController});
  final DtoTest dto;
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
