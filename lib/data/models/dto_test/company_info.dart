import 'package:collection/collection.dart';

class CompanyInfo {
  int? id;
  String? nameAr;
  String? nameEn;
  String? phone;
  String? address;
  String? taxNumber;
  String? note;
  String? logo;

  CompanyInfo({
    this.id,
    this.nameAr,
    this.nameEn,
    this.phone,
    this.address,
    this.taxNumber,
    this.note,
    this.logo,
  });

  factory CompanyInfo.fromJson(Map<String, dynamic> json) => CompanyInfo(
        id: json['id'] as int?,
        nameAr: json['nameAr'] as String?,
        nameEn: json['nameEn'] as String?,
        phone: json['phone'] as String?,
        address: json['address'] as String?,
        taxNumber: json['taxNumber'] as String?,
        note: json['note'] as String?,
        logo: json['logo'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nameAr': nameAr,
        'nameEn': nameEn,
        'phone': phone,
        'address': address,
        'taxNumber': taxNumber,
        'note': note,
        'logo': logo,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! CompanyInfo) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      nameAr.hashCode ^
      nameEn.hashCode ^
      phone.hashCode ^
      address.hashCode ^
      taxNumber.hashCode ^
      note.hashCode ^
      logo.hashCode;
}
