import 'package:equatable/equatable.dart';

import 'print_paper_size.dart';
import 'printer_brand.dart';
import 'printer_connection_type.dart';
import 'printer_model.dart';

class Printer extends Equatable {
  final int? id;
  final String? displayNameAr;
  final String? displayNameEn;
  final dynamic printerName;
  final int? countCopies;
  final bool? isDelete;
  final int? printerConnectionTypeId;
  final PrinterConnectionType? printerConnectionType;
  final int? printerModelId;
  final PrinterModel? printerModel;
  final int? printerBrandId;
  final PrinterBrand? printerBrand;
  final int? printPaperSizeId;
  final PrintPaperSize? printPaperSize;
  final String? ipAddress;
  final String? port;

  const Printer({
    this.id,
    this.displayNameAr,
    this.displayNameEn,
    this.printerName,
    this.countCopies,
    this.isDelete,
    this.printerConnectionTypeId,
    this.printerConnectionType,
    this.printerModelId,
    this.printerModel,
    this.printerBrandId,
    this.printerBrand,
    this.printPaperSizeId,
    this.printPaperSize,
    this.ipAddress,
    this.port,
  });

  factory Printer.fromJson(Map<String, dynamic> json) => Printer(
        id: json['id'] as int?,
        displayNameAr: json['displayNameAR'] as String?,
        displayNameEn: json['displayNameEN'] as String?,
        printerName: json['printerName'] as dynamic,
        countCopies: json['countCopies'] as int?,
        isDelete: json['isDelete'] as bool?,
        printerConnectionTypeId: json['printerConnectionTypeId'] as int?,
        printerConnectionType: json['printerConnectionType'] == null
            ? null
            : PrinterConnectionType.fromJson(
                json['printerConnectionType'] as Map<String, dynamic>),
        printerModelId: json['printerModelId'] as int?,
        printerModel: json['printerModel'] == null
            ? null
            : PrinterModel.fromJson(
                json['printerModel'] as Map<String, dynamic>),
        printerBrandId: json['printerBrandId'] as int?,
        printerBrand: json['printerBrand'] == null
            ? null
            : PrinterBrand.fromJson(
                json['printerBrand'] as Map<String, dynamic>),
        printPaperSizeId: json['printPaperSizeId'] as int?,
        printPaperSize: json['printPaperSize'] == null
            ? null
            : PrintPaperSize.fromJson(
                json['printPaperSize'] as Map<String, dynamic>),
        ipAddress: json['ipAddress'] as String?,
        port: json['port'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'displayNameAR': displayNameAr,
        'displayNameEN': displayNameEn,
        'printerName': printerName,
        'countCopies': countCopies,
        'isDelete': isDelete,
        'printerConnectionTypeId': printerConnectionTypeId,
        'printerConnectionType': printerConnectionType?.toJson(),
        'printerModelId': printerModelId,
        'printerModel': printerModel?.toJson(),
        'printerBrandId': printerBrandId,
        'printerBrand': printerBrand?.toJson(),
        'printPaperSizeId': printPaperSizeId,
        'printPaperSize': printPaperSize?.toJson(),
        'ipAddress': ipAddress,
        'port': port,
      };

  @override
  List<Object?> get props {
    return [
      id,
      displayNameAr,
      displayNameEn,
      printerName,
      countCopies,
      isDelete,
      printerConnectionTypeId,
      printerConnectionType,
      printerModelId,
      printerModel,
      printerBrandId,
      printerBrand,
      printPaperSizeId,
      printPaperSize,
      ipAddress,
      port,
    ];
  }
}
