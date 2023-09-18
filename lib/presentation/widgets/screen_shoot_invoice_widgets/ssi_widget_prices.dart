import 'package:flutter/material.dart';

import '../../../data/models/dto_test/dto_test.dart';

class SSIWidgetPrices extends StatelessWidget {
  const SSIWidgetPrices({super.key, required this.dto, required this.isImin});
  final DtoTest dto;
  final bool isImin;

  @override
  Widget build(BuildContext context) {
    double d = double.parse(dto.totalVat!.toString());
    String val = d.toStringAsFixed(2);
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${dto.discountTotal}\n${dto.serviceTotal}',
                  style: const TextStyle(fontSize: 12, color: Colors.black)),
              Text('خصم\n${dto.serviceValue}%',
                  style: const TextStyle(fontSize: 12, color: Colors.black)),
            ],
          ),
          Container(
            width: double.infinity,
            color: isImin ? Colors.white : Colors.grey[350],
            child: Column(children: [
              Text(
                ' المبلغ المطلوب ' '${dto.netTotal} ',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'السعر شامل ق.م',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Text(
                val,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}