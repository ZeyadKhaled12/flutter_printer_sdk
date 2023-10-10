import 'package:equatable/equatable.dart';

import 'item_category.dart';
import 'item_unit_price.dart';
import 'printer.dart';

class Item extends Equatable {
  final int? id;
  final String? code;
  final String? nameAr;
  final String? nameEn;
  final String? imagePath;
  final dynamic itemTypeId;
  final int? itemIndex;
  final String? note;
  final int? itemCategoryId;
  final ItemCategory? itemCategory;
  final int? itemUnitPriceDefault;
  final dynamic printerName;
  final int? averagePrice;
  final bool? isDelete;
  final bool? isSell;
  final bool? isHideFromMenu;
  final bool? isManufacturing;
  final bool? isBuy;
  final bool? isFree;
  final dynamic printerId;
  final Printer? printer;
  final List<ItemUnitPrice>? itemUnitPrices;

  const Item({
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
    this.printerId,
    this.printer,
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
        printerId: json['printerId'] as dynamic,
        printer: json['printer'] == null
            ? null
            : Printer.fromJson(json['printer'] as Map<String, dynamic>),
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
        'printerId': printerId,
        'printer': printer?.toJson(),
        'itemUnitPrices': itemUnitPrices?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      code,
      nameAr,
      nameEn,
      imagePath,
      itemTypeId,
      itemIndex,
      note,
      itemCategoryId,
      itemCategory,
      itemUnitPriceDefault,
      printerName,
      averagePrice,
      isDelete,
      isSell,
      isHideFromMenu,
      isManufacturing,
      isBuy,
      isFree,
      printerId,
      printer,
      itemUnitPrices,
    ];
  }
}
