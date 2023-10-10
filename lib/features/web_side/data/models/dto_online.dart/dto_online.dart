import 'kitchen_rdlc.dart';

class DtoOnline {
  String? data;
  dynamic printerName;
  String? printerSize;
  int? copies;
  String? connectType;
  String? brand;
  String? model;
  String? ipAddress;
  String? port;
  List<KitchenRdlc>? kitchenRdlcs;
  bool? vatIsTaxesIncluded;
  bool? vatIsActive;

  DtoOnline({
    this.data,
    this.printerName,
    this.printerSize,
    this.copies,
    this.connectType,
    this.brand,
    this.model,
    this.ipAddress,
    this.port,
    this.kitchenRdlcs,
    this.vatIsTaxesIncluded,
    this.vatIsActive,
  });

  factory DtoOnline.fromJson(Map<String, dynamic> json) => DtoOnline(
        data: json['data'] as String?,
        printerName: json['printerName'] as dynamic,
        printerSize: json['printerSize'] as String?,
        copies: json['copies'] as int?,
        connectType: json['connectType'] as String?,
        brand: json['brand'] as String?,
        model: json['model'] as String?,
        ipAddress: json['ipAddress'] as String?,
        port: json['port'] as String?,
        kitchenRdlcs: (json['kitchenRdlcs'] as List<dynamic>?)
            ?.map((e) => KitchenRdlc.fromJson(e as Map<String, dynamic>))
            .toList(),
        vatIsTaxesIncluded: json['vatIsTaxesIncluded'] as bool?,
        vatIsActive: json['vatIsActive'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'data': data,
        'printerName': printerName,
        'printerSize': printerSize,
        'copies': copies,
        'connectType': connectType,
        'brand': brand,
        'model': model,
        'ipAddress': ipAddress,
        'port': port,
        'kitchenRdlcs': kitchenRdlcs?.map((e) => e.toJson()).toList(),
        'vatIsTaxesIncluded': vatIsTaxesIncluded,
        'vatIsActive': vatIsActive,
      };
}
