import 'package:equatable/equatable.dart';

class ItemUnit extends Equatable {
  final int? id;
  final String? nameAr;
  final String? nameEn;
  final bool? isDelete;
  final bool? isSell;
  final bool? isBuy;

  const ItemUnit({
    this.id,
    this.nameAr,
    this.nameEn,
    this.isDelete,
    this.isSell,
    this.isBuy,
  });

  factory ItemUnit.fromJson(Map<String, dynamic> json) => ItemUnit(
        id: json['id'] as int?,
        nameAr: json['nameAR'] as String?,
        nameEn: json['nameEN'] as String?,
        isDelete: json['isDelete'] as bool?,
        isSell: json['isSell'] as bool?,
        isBuy: json['isBuy'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nameAR': nameAr,
        'nameEN': nameEn,
        'isDelete': isDelete,
        'isSell': isSell,
        'isBuy': isBuy,
      };

  @override
  List<Object?> get props {
    return [
      id,
      nameAr,
      nameEn,
      isDelete,
      isSell,
      isBuy,
    ];
  }
}
