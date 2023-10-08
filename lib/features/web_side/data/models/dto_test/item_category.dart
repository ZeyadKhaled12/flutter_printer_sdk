import 'package:collection/collection.dart';

class ItemCategory {
  int? id;
  String? nameAr;
  String? nameEn;
  bool? isSell;
  bool? isManufacturing;
  bool? isBuy;
  dynamic parentId;
  int? printerId;
  String? image;
  bool? isDelete;
  int? itemCategoriesCount;

  ItemCategory({
    this.id,
    this.nameAr,
    this.nameEn,
    this.isSell,
    this.isManufacturing,
    this.isBuy,
    this.parentId,
    this.printerId,
    this.image,
    this.isDelete,
    this.itemCategoriesCount,
  });

  factory ItemCategory.fromJson(Map<String, dynamic> json) => ItemCategory(
        id: json['id'] as int?,
        nameAr: json['nameAR'] as String?,
        nameEn: json['nameEN'] as String?,
        isSell: json['isSell'] as bool?,
        isManufacturing: json['isManufacturing'] as bool?,
        isBuy: json['isBuy'] as bool?,
        parentId: json['parentId'] as dynamic,
        printerId: json['printerId'] as int?,
        image: json['image'] as String?,
        isDelete: json['isDelete'] as bool?,
        itemCategoriesCount: json['itemCategoriesCount'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nameAR': nameAr,
        'nameEN': nameEn,
        'isSell': isSell,
        'isManufacturing': isManufacturing,
        'isBuy': isBuy,
        'parentId': parentId,
        'printerId': printerId,
        'image': image,
        'isDelete': isDelete,
        'itemCategoriesCount': itemCategoriesCount,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ItemCategory) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      nameAr.hashCode ^
      nameEn.hashCode ^
      isSell.hashCode ^
      isManufacturing.hashCode ^
      isBuy.hashCode ^
      parentId.hashCode ^
      printerId.hashCode ^
      image.hashCode ^
      isDelete.hashCode ^
      itemCategoriesCount.hashCode;
}
