import 'package:collection/collection.dart';

class ItemUnit {
  int? id;
  String? nameAr;
  String? nameEn;
  bool? isDelete;
  bool? isSell;
  bool? isBuy;

  ItemUnit({
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
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ItemUnit) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      nameAr.hashCode ^
      nameEn.hashCode ^
      isDelete.hashCode ^
      isSell.hashCode ^
      isBuy.hashCode;
}
