import 'dart:convert';
import 'package:flutter/material.dart';

class GConverter {
  String stringConvert;

  GConverter({required this.stringConvert});

  Widget convertReturnImage() {
    return Image.memory(base64Decode(stringConvert));
  }

  DateConverter convertFromDateTime() {
    List date = stringConvert.split('2023');
    date[0] = '${date[0]}2023';
    return DateConverter(date: date[0], time: date[1]);
  }
}

class DateConverter {
  String time;
  String date;
  DateConverter({required this.time, required this.date});
}
