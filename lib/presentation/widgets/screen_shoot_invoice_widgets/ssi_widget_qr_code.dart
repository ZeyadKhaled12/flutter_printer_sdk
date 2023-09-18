import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../../../data/models/dto_test/dto_test.dart';

class SSIWidgetQRCode extends StatelessWidget {
  const SSIWidgetQRCode({super.key, required this.dto});
  final DtoTest dto;

  @override
  Widget build(BuildContext context) {
    final Uint8List byteList = base64.decode(dto.qrCode!.split(',').last);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${dto.companyInfo!.phone}',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black, fontSize: 14),
          ),
          Text(
            '${dto.companyInfo!.note}',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black, fontSize: 14),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10)),
          Image.memory(byteList, width: 140, height: 100)
        ],
      ),
    );
  }
}
