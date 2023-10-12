import 'package:flutter/material.dart';
import 'package:flutter_printer_sdk/features/web_side/data/models/dto_offline/dto_offline.dart';

import '../../../../../core/utils/general_functions/converter.dart';

class SSOWidgetTop extends StatelessWidget {
  const SSOWidgetTop({super.key, required this.dto});
  final DtoOffline dto;

  @override
  Widget build(BuildContext context) {
    DateConverter dateConverter =
        GConverter(stringConvert: dto.date!).convertFromDateTime();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${dto.companyInfo!.nameAr}',
            style: const TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold)),
        body(
            title1: 'رقم الفاتورة',
            title2: 'المستخدم',
            value1: '${dto.code}',
            value2: 'admin',
            bigValue: dto.billPlace!.nameAr!),
        const Padding(padding: EdgeInsets.only(bottom: 6)),
        body(
            title1: 'تاريخ',
            title2: 'الوقت',
            value1: dateConverter.date,
            value2: dateConverter.time,
            bigValue: '${dto.orderNo}'),
      ],
    );
  }
}

Widget body({
  required String title1,
  required String title2,
  required String value1,
  required String value2,
  required String bigValue,
}) {
  return SizedBox(
    width: double.infinity,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigValue,
          style: const TextStyle(
              color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),
        ),
        Column(
          children: [
            Text(
              '$value1:$title1',
              style: const TextStyle(color: Colors.black, fontSize: 8),
            ),
            Text(
              '$value2:$title2',
              style: const TextStyle(color: Colors.black, fontSize: 8),
            ),
          ],
        )
      ],
    ),
  );
}
