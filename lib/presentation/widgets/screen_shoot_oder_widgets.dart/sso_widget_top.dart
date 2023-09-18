import 'package:flutter/material.dart';

import '../../../core/utils/general_functions/converter.dart';
import '../../../data/models/dto_test/dto_test.dart';

class SSOWidgetTop extends StatelessWidget {
  const SSOWidgetTop({super.key, required this.dto});
  final DtoTest dto;

  @override
  Widget build(BuildContext context) {
    DateConverter dateConverter =
        GConverter(stringConvert: dto.date!).convertFromDateTime();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        body(
            title1: 'رقم الفاتورة',
            title2: 'المستخدم',
            value1: '${dto.code}',
            value2: 'admin',
            bigValue: dto.billPlace!.nameAr!),
        const Padding(padding: EdgeInsets.only(bottom: 15)),
        body(
            title1: 'تاريخ',
            title2: 'الوقت',
            value1: dateConverter.date,
            value2: dateConverter.date,
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
          style: const TextStyle(color: Colors.black, fontSize: 12),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  value1,
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                ),
                Text(
                  value2,
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(right: 4)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title1,
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                ),
                Text(
                  title2,
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
