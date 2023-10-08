import 'package:collection/collection.dart';

import 'item_category.dart';
import 'item_unit_price.dart';

class Item {
  int? id;
  String? code;
  String? nameAr;
  String? nameEn;
  String? imagePath;
  dynamic itemTypeId;
  int? itemIndex;
  String? note;
  int? itemCategoryId;
  ItemCategory? itemCategory;
  int? itemUnitPriceDefault;
  dynamic printerName;
  int? averagePrice;
  bool? isDelete;
  bool? isSell;
  bool? isHideFromMenu;
  bool? isManufacturing;
  bool? isBuy;
  bool? isFree;
  List<ItemUnitPrice>? itemUnitPrices;

  Item({
    this.id,
    this.code,
    this.nameAr,
    this.nameEn,
    this.imagePath,
    this.itemTypeId,
    this.itemIndex,
    this.note,
    this.itemCategoryId,
    this.itemCategory,
    this.itemUnitPriceDefault,
    this.printerName,
    this.averagePrice,
    this.isDelete,
    this.isSell,
    this.isHideFromMenu,
    this.isManufacturing,
    this.isBuy,
    this.isFree,
    this.itemUnitPrices,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json['id'] as int?,
        code: json['code'] as String?,
        nameAr: json['nameAR'] as String?,
        nameEn: json['nameEN'] as String?,
        imagePath: json['imagePath'] as String?,
        itemTypeId: json['itemTypeId'] as dynamic,
        itemIndex: json['itemIndex'] as int?,
        note: json['note'] as String?,
        itemCategoryId: json['itemCategoryId'] as int?,
        itemCategory: json['itemCategory'] == null
            ? null
            : ItemCategory.fromJson(
                json['itemCategory'] as Map<String, dynamic>),
        itemUnitPriceDefault: json['itemUnitPriceDefault'] as int?,
        printerName: json['printerName'] as dynamic,
        averagePrice: json['averagePrice'] as int?,
        isDelete: json['isDelete'] as bool?,
        isSell: json['isSell'] as bool?,
        isHideFromMenu: json['isHideFromMenu'] as bool?,
        isManufacturing: json['isManufacturing'] as bool?,
        isBuy: json['isBuy'] as bool?,
        isFree: json['isFree'] as bool?,
        itemUnitPrices: (json['itemUnitPrices'] as List<dynamic>?)
            ?.map((e) => ItemUnitPrice.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'code': code,
        'nameAR': nameAr,
        'nameEN': nameEn,
        'imagePath': imagePath,
        'itemTypeId': itemTypeId,
        'itemIndex': itemIndex,
        'note': note,
        'itemCategoryId': itemCategoryId,
        'itemCategory': itemCategory?.toJson(),
        'itemUnitPriceDefault': itemUnitPriceDefault,
        'printerName': printerName,
        'averagePrice': averagePrice,
        'isDelete': isDelete,
        'isSell': isSell,
        'isHideFromMenu': isHideFromMenu,
        'isManufacturing': isManufacturing,
        'isBuy': isBuy,
        'isFree': isFree,
        'itemUnitPrices': itemUnitPrices?.map((e) => e.toJson()).toList(),
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Item) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      code.hashCode ^
      nameAr.hashCode ^
      nameEn.hashCode ^
      imagePath.hashCode ^
      itemTypeId.hashCode ^
      itemIndex.hashCode ^
      note.hashCode ^
      itemCategoryId.hashCode ^
      itemCategory.hashCode ^
      itemUnitPriceDefault.hashCode ^
      printerName.hashCode ^
      averagePrice.hashCode ^
      isDelete.hashCode ^
      isSell.hashCode ^
      isHideFromMenu.hashCode ^
      isManufacturing.hashCode ^
      isBuy.hashCode ^
      isFree.hashCode ^
      itemUnitPrices.hashCode;
}
