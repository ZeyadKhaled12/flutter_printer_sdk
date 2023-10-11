import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

class PrinterScreenOnline extends StatefulWidget {
  const PrinterScreenOnline({super.key, required this.uint8list});
  final Uint8List uint8list;

  @override
  State<PrinterScreenOnline> createState() => _PrinterScreenOnlineState();
}

class _PrinterScreenOnlineState extends State<PrinterScreenOnline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          color: Colors.white,
          child: Image(
            image: MemoryImage(widget.uint8list),
          ),
        ),
      ),
    );
  }
}

Future<Widget> convertBase64ToPDF(String base64String) async {
  final directory = await getExternalStorageDirectory();
  final path = directory!.path;
  final file = File('$path/my_pdf.pdf');
  await file.writeAsBytes(base64.decode(base64String), flush: true);
  return Text('');
}

Future<Image> convertFileToImage(File picture) async {
  List<int> imageBase64 = picture.readAsBytesSync();
  String imageAsString = base64Encode(imageBase64);
  Uint8List uint8list = base64.decode(imageAsString);
  Image image = Image.memory(uint8list);
  return image;
}
