import 'package:collection/collection.dart';

class ItemUnitPrice {
  int? id;
  int? itemUnitId;
  int? sellPrice;
  int? buyPrice;
  bool? isDefullt;
  bool? isDelete;
  String? itemUnitNameAr;
  String? itemUnitNameEn;
  int? internalQty;
  int? itemId;

  ItemUnitPrice({
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
        buyPrice: json['buyPrice'] as int?,
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
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ItemUnitPrice) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      itemUnitId.hashCode ^
      sellPrice.hashCode ^
      buyPrice.hashCode ^
      isDefullt.hashCode ^
      isDelete.hashCode ^
      itemUnitNameAr.hashCode ^
      itemUnitNameEn.hashCode ^
      internalQty.hashCode ^
      itemId.hashCode;
}
