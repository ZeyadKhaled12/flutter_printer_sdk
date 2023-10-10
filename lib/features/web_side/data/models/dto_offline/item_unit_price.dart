import 'package:equatable/equatable.dart';

class ItemUnitPrice extends Equatable {
  final int? id;
  final int? itemUnitId;
  final int? sellPrice;
  final double? buyPrice;
  final bool? isDefullt;
  final bool? isDelete;
  final String? itemUnitNameAr;
  final String? itemUnitNameEn;
  final int? internalQty;
  final int? itemId;

  const ItemUnitPrice({
    this.id,
    this.itemUnitId,
    this.sellPrice,
    this.buyPrice,
    this.isDefullt,
    this.isDelete,
    this.itemUnitNameAr,
    this.itemUnitNameEn,
    this.internalQty,
    this.itemId,
  });

  factory ItemUnitPrice.fromJson(Map<String, dynamic> json) => ItemUnitPrice(
        id: json['id'] as int?,
        itemUnitId: json['itemUnitId'] as int?,
        sellPrice: json['sellPrice'] as int?,
        buyPrice: (json['buyPrice'] as num?)?.toDouble(),
        isDefullt: json['isDefullt'] as bool?,
        isDelete: json['isDelete'] as bool?,
        itemUnitNameAr: json['itemUnitNameAR'] as String?,
        itemUnitNameEn: json['itemUnitNameEN'] as String?,
        internalQty: json['internalQty'] as int?,
        itemId: json['itemId'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'itemUnitId': itemUnitId,
        'sellPrice': sellPrice,
        'buyPrice': buyPrice,
        'isDefullt': isDefullt,
        'isDelete': isDelete,
        'itemUnitNameAR': itemUnitNameAr,
        'itemUnitNameEN': itemUnitNameEn,
        'internalQty': internalQty,
        'itemId': itemId,
      };

  @override
  List<Object?> get props {
    return [
      id,
      itemUnitId,
      sellPrice,
      buyPrice,
      isDefullt,
      isDelete,
      itemUnitNameAr,
      itemUnitNameEn,
      internalQty,
      itemId,
    ];
  }
}
