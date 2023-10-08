import 'package:collection/collection.dart';

class PrinterConnectionType {
  int? id;
  String? nameAr;
  String? nameEn;

  PrinterConnectionType({this.id, this.nameAr, this.nameEn});

  factory PrinterConnectionType.fromJson(Map<String, dynamic> json) {
    return PrinterConnectionType(
      id: json['id'] as int?,
      nameAr: json['nameAR'] as String?,
      nameEn: json['nameEN'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nameAR': nameAr,
        'nameEN': nameEn,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PrinterConnectionType) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => id.hashCode ^ nameAr.hashCode ^ nameEn.hashCode;
}
