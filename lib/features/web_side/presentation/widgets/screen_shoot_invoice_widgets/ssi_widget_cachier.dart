import 'package:flutter/material.dart';
import '../../../../../core/utils/general_functions/converter.dart';
import '../../../data/models/dto_offline/dto_offline.dart';

class SSIWidgetCachier extends StatelessWidget {
  const SSIWidgetCachier({super.key, required this.dto});
  final DtoOffline dto;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          row(
              '${dto.code}:رقم الفاتورة', //' رقم الفاتورة :' '${dto.code}',
              GConverter(stringConvert: dto.date!).convertFromDateTime().date),
          row('${dto.user!.fullName}:كاشير',
              GConverter(stringConvert: dto.date!).convertFromDateTime().time),
        ],
      ),
    );
  }
}

Widget row(String title, String sub) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        sub,
        style: const TextStyle(color: Colors.black, fontSize: 8),
      ),
      Text(
        title,
        style: const TextStyle(color: Colors.black, fontSize: 8),
      ),
    ],
  );
}
