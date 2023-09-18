import 'package:collection/collection.dart';

class PaymentType {
  int? id;
  String? nameAr;
  String? nameEn;

  PaymentType({this.id, this.nameAr, this.nameEn});

  factory PaymentType.fromJson(Map<String, dynamic> json) => PaymentType(
        id: json['id'] as int?,
        nameAr: json['nameAR'] as String?,
        nameEn: json['nameEN'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nameAR': nameAr,
        'nameEN': nameEn,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PaymentType) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => id.hashCode ^ nameAr.hashCode ^ nameEn.hashCode;
}
