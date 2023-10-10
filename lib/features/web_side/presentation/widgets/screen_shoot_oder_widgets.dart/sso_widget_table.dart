import 'package:flutter/material.dart';
import 'package:flutter_printer_sdk/features/web_side/data/models/dto_offline/dto_offline.dart';

class SSOWidgetTable extends StatelessWidget {
  const SSOWidgetTable({super.key, required this.dto});
  final DtoOffline dto;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.black, width: 0.4),
      columnWidths: const {
        0: FractionColumnWidth(0.4),
        1: FractionColumnWidth(0.6),
      },
      children: List.generate(
          dto.billDetails!.length,
          (index) => buildRow([
                '${dto.billDetails![index].qty}',
                '${dto.billDetails![index].item!.nameAr} - ${dto.billDetails![index].itemUnit!.nameAr}\n${dto.billDetails![index].parentCategoryAr}\n${dto.billDetails![index].note}'
              ])),
    );
  }
}

TableRow buildRow(List<String> cells) {
  return TableRow(
      children: cells
          .map((e) => Padding(
              padding: EdgeInsets.zero,
              child:
                  Center(child: Text(e, style: const TextStyle(fontSize: 12)))))
          .toList());
}
