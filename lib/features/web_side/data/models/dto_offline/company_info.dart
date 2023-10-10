import 'package:equatable/equatable.dart';

class CompanyInfo extends Equatable {
  final int? id;
  final String? nameAr;
  final String? nameEn;
  final String? phone;
  final String? address;
  final String? taxNumber;
  final String? note;
  final String? logo;

  const CompanyInfo({
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
  List<Object?> get props {
    return [
      id,
      nameAr,
      nameEn,
      phone,
      address,
      taxNumber,
      note,
      logo,
    ];
  }
}
