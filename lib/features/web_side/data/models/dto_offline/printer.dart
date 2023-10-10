import 'package:equatable/equatable.dart';

class Printer extends Equatable {
  final int? id;
  final String? displayNameAr;
  final String? displayNameEn;
  final dynamic printerName;
  final int? countCopies;
  final bool? isDelete;
  final dynamic printerConnectionTypeId;
  final dynamic printerConnectionType;
  final dynamic printerModelId;
  final dynamic printerModel;
  final dynamic printerBrandId;
  final dynamic printerBrand;
  final dynamic printPaperSizeId;
  final dynamic printPaperSize;
  final dynamic ipAddress;
  final dynamic port;

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
        printerConnectionTypeId: json['printerConnectionTypeId'] as dynamic,
        printerConnectionType: json['printerConnectionType'] as dynamic,
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
        'printerConnectionType': printerConnectionType,
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
