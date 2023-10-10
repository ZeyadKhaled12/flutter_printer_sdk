class KitchenRdlc {
  String? data;
  dynamic printerName;
  String? printerSize;
  int? copies;
  String? connectType;
  String? brand;
  String? model;
  String? ipAddress;
  String? port;

  KitchenRdlc({
    this.data,
    this.printerName,
    this.printerSize,
    this.copies,
    this.connectType,
    this.brand,
    this.model,
    this.ipAddress,
    this.port,
  });

  factory KitchenRdlc.fromJson(Map<String, dynamic> json) => KitchenRdlc(
        data: json['data'] as String?,
        printerName: json['printerName'] as dynamic,
        printerSize: json['printerSize'] as String?,
        copies: json['copies'] as int?,
        connectType: json['connectType'] as String?,
        brand: json['brand'] as String?,
        model: json['model'] as String?,
        ipAddress: json['ipAddress'] as String?,
        port: json['port'] as String?,
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
      };
}
