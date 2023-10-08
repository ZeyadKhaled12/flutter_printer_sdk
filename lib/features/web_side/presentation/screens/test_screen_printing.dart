import 'dart:typed_data';

import 'package:flutter/material.dart';
import '../../data/models/print_object.dart';
import 'package:pdf/pdf.dart';

class TestScreenPrinting extends StatelessWidget {
  const TestScreenPrinting({super.key, required this.images});
  final List<PrintObject> images;

  @override
  Widget build(BuildContext context) {
    for (var element in images) {
      print(element.uint8list);
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: List.generate(images.length,
              (index) => Image(image: MemoryImage(images[index].uint8list))),
        ),
      ),
    );
  }
}
