import 'package:flutter/material.dart';

import '../../../data/models/dto_test/dto_test.dart';

class SSIWidgetTitle extends StatelessWidget {
  const SSIWidgetTitle({super.key, required this.dto});
  final DtoTest dto;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('فتورة ضريبة مبسطة',
                style: TextStyle(color: Colors.black, fontSize: 12)),
            Text('${dto.orderNo}',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            const Padding(padding: EdgeInsets.only(bottom: 2.5)),
            Text('${dto.companyInfo!.nameAr}',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
            const Padding(padding: EdgeInsets.only(bottom: 2.5)),
            Text(dto.companyInfo!.address!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
            const Padding(padding: EdgeInsets.only(bottom: 2.5)),
            Text(
              'الرقم الضريبي' ' ${dto.companyInfo!.taxNumber} ',
              textAlign: TextAlign.end,
              style: const TextStyle(color: Colors.black, fontSize: 12),
            ),
          ],
        ));
  }
}
