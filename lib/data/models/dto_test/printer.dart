import 'package:collection/collection.dart';

import 'printer_connection_type.dart';

class Printer {
  int? id;
  String? displayNameAr;
  String? displayNameEn;
  dynamic printerName;
  int? countCopies;
  bool? isDelete;
  int? printerConnectionTypeId;
  PrinterConnectionType? printerConnectionType;
  dynamic printerModelId;
  dynamic printerModel;
  dynamic printerBrandId;
  dynamic printerBrand;
  dynamic printPaperSizeId;
  dynamic printPaperSize;
  dynamic ipAddress;
  dynamic port;

  Printer({
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
        printerModelId: json['printerModelId'] as dynamic,
        printerModel: json['printerModel'] as dynamic,
        printerBrandId: json['printerBrandId'] as dynamic,
        printerBrand: json['printerBrand'] as dynamic,
        printPaperSizeId: json['printPaperSizeId'] as dynamic,
        printPaperSize: json['printPaperSize'] as dynamic,
        ipAddress: json['ipAddress'] as dynamic,
        port: json['port'] as dynamic,
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
        'printerModel': printerModel,
        'printerBrandId': printerBrandId,
        'printerBrand': printerBrand,
        'printPaperSizeId': printPaperSizeId,
        'printPaperSize': printPaperSize,
        'ipAddress': ipAddress,
        'port': port,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Printer) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      displayNameAr.hashCode ^
      displayNameEn.hashCode ^
      printerName.hashCode ^
      countCopies.hashCode ^
      isDelete.hashCode ^
      printerConnectionTypeId.hashCode ^
      printerConnectionType.hashCode ^
      printerModelId.hashCode ^
      printerModel.hashCode ^
      printerBrandId.hashCode ^
      printerBrand.hashCode ^
      printPaperSizeId.hashCode ^
      printPaperSize.hashCode ^
      ipAddress.hashCode ^
      port.hashCode;
}
