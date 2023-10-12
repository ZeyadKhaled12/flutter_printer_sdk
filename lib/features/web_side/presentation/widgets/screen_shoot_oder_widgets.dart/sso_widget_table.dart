import 'package:flutter/material.dart';
import 'package:flutter_printer_sdk/features/web_side/data/models/dto_offline/dto_offline.dart';

class SSOWidgetTable extends StatelessWidget {
  const SSOWidgetTable({super.key, required this.dto});
  final DtoOffline dto;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.symmetric(
          inside: const BorderSide(color: Colors.black, width: 0.4)),
      columnWidths: const {
        0: FractionColumnWidth(0.4),
        1: FractionColumnWidth(0.6),
      },
      children: List.generate(
          dto.billDetails!.length + 1,
          (index) => index == 0
              ? buildRow(['الكمية', 'الصنف'])
              : buildRow([
                  '${dto.billDetails![index - 1].qty}',
                  '${dto.billDetails![index - 1].item!.nameAr} - ${dto.billDetails![index - 1].itemUnit!.nameAr}-${dto.billDetails![index - 1].parentCategoryAr}-${dto.billDetails![index - 1].note}'
                ])),
    );
  }
}

TableRow buildRow(List<String> cells) {
  return TableRow(
      children: cells
          .map((e) => Padding(
              padding: EdgeInsets.zero,
              child: Center(
                  child: Text(e,
                      style: const TextStyle(fontSize: 8),
                      textAlign: TextAlign.center))))
          .toList());
}
