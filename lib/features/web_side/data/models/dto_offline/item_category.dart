import 'package:equatable/equatable.dart';

class ItemCategory extends Equatable {
  final int? id;
  final String? nameAr;
  final String? nameEn;
  final bool? isSell;
  final bool? isManufacturing;
  final bool? isBuy;
  final dynamic parentId;
  final int? printerId;
  final String? image;
  final bool? isDelete;
  final int? itemCategoriesCount;

  const ItemCategory({
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
  List<Object?> get props {
    return [
      id,
      nameAr,
      nameEn,
      isSell,
      isManufacturing,
      isBuy,
      parentId,
      printerId,
      image,
      isDelete,
      itemCategoriesCount,
    ];
  }
}
