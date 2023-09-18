import 'package:collection/collection.dart';

import 'item.dart';
import 'item_unit.dart';

class BillDetail {
  int? id;
  String? dateOpen;
  String? date;
  int? itemSellPrice;
  int? itemBuyPrice;
  int? qty;
  int? numberPieces;
  int? supTotal;
  String? vatValue;
  int? vatTotal;
  String? discountValue;
  int? discountTotal;
  String? note;
  int? notePrice;
  int? netTotal;
  int? currentQtyAfterMovement;
  int? avgAfterMovment;
  int? totalCostAfterMovement;
  bool? isNew;
  bool? isDelete;
  bool? isFinish;
  int? billId;
  int? itemId;
  int? internalQty;
  dynamic itemUnitNameAr;
  dynamic itemUnitNameEn;
  int? itemUnitId;
  dynamic causeDeletion;
  int? userId;
  String? username;
  String? parentCategoryAr;
  String? parentCategoryEn;
  ItemUnit? itemUnit;
  dynamic bill;
  Item? item;
  dynamic cookStatusId;

  BillDetail({
    this.id,
    this.dateOpen,
    this.date,
    this.itemSellPrice,
    this.itemBuyPrice,
    this.qty,
    this.numberPieces,
    this.supTotal,
    this.vatValue,
    this.vatTotal,
    this.discountValue,
    this.discountTotal,
    this.note,
    this.notePrice,
    this.netTotal,
    this.currentQtyAfterMovement,
    this.avgAfterMovment,
    this.totalCostAfterMovement,
    this.isNew,
    this.isDelete,
    this.isFinish,
    this.billId,
    this.itemId,
    this.internalQty,
    this.itemUnitNameAr,
    this.itemUnitNameEn,
    this.itemUnitId,
    this.causeDeletion,
    this.userId,
    this.username,
    this.parentCategoryAr,
    this.parentCategoryEn,
    this.itemUnit,
    this.bill,
    this.item,
    this.cookStatusId,
  });

  factory BillDetail.fromJson(Map<String, dynamic> json) => BillDetail(
        id: json['id'] as int?,
        dateOpen: json['dateOpen'] as String?,
        date: json['date'] as String?,
        itemSellPrice: json['itemSellPrice'] as int?,
        itemBuyPrice: json['itemBuyPrice'] as int?,
        qty: json['qty'] as int?,
        numberPieces: json['numberPieces'] as int?,
        supTotal: json['supTotal'] as int?,
        vatValue: json['vatValue'] as String?,
        vatTotal: json['vatTotal'] as int?,
        discountValue: json['discountValue'] as String?,
        discountTotal: json['discountTotal'] as int?,
        note: json['note'] as String?,
        notePrice: json['notePrice'] as int?,
        netTotal: json['netTotal'] as int?,
        currentQtyAfterMovement: json['currentQtyAfterMovement'] as int?,
        avgAfterMovment: json['avgAfterMovment'] as int?,
        totalCostAfterMovement: json['totalCostAfterMovement'] as int?,
        isNew: json['isNew'] as bool?,
        isDelete: json['isDelete'] as bool?,
        isFinish: json['isFinish'] as bool?,
        billId: json['billId'] as int?,
        itemId: json['itemId'] as int?,
        internalQty: json['internalQty'] as int?,
        itemUnitNameAr: json['itemUnitNameAR'] as dynamic,
        itemUnitNameEn: json['itemUnitNameEN'] as dynamic,
        itemUnitId: json['itemUnitId'] as int?,
        causeDeletion: json['causeDeletion'] as dynamic,
        userId: json['userId'] as int?,
        username: json['username'] as String?,
        parentCategoryAr: json['parentCategoryAR'] as String?,
        parentCategoryEn: json['parentCategoryEN'] as String?,
        itemUnit: json['itemUnit'] == null
            ? null
            : ItemUnit.fromJson(json['itemUnit'] as Map<String, dynamic>),
        bill: json['bill'] as dynamic,
        item: json['item'] == null
            ? null
            : Item.fromJson(json['item'] as Map<String, dynamic>),
        cookStatusId: json['cookStatusId'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'dateOpen': dateOpen,
        'date': date,
        'itemSellPrice': itemSellPrice,
        'itemBuyPrice': itemBuyPrice,
        'qty': qty,
        'numberPieces': numberPieces,
        'supTotal': supTotal,
        'vatValue': vatValue,
        'vatTotal': vatTotal,
        'discountValue': discountValue,
        'discountTotal': discountTotal,
        'note': note,
        'notePrice': notePrice,
        'netTotal': netTotal,
        'currentQtyAfterMovement': currentQtyAfterMovement,
        'avgAfterMovment': avgAfterMovment,
        'totalCostAfterMovement': totalCostAfterMovement,
        'isNew': isNew,
        'isDelete': isDelete,
        'isFinish': isFinish,
        'billId': billId,
        'itemId': itemId,
        'internalQty': internalQty,
        'itemUnitNameAR': itemUnitNameAr,
        'itemUnitNameEN': itemUnitNameEn,
        'itemUnitId': itemUnitId,
        'causeDeletion': causeDeletion,
        'userId': userId,
        'username': username,
        'parentCategoryAR': parentCategoryAr,
        'parentCategoryEN': parentCategoryEn,
        'itemUnit': itemUnit?.toJson(),
        'bill': bill,
        'item': item?.toJson(),
        'cookStatusId': cookStatusId,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! BillDetail) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      dateOpen.hashCode ^
      date.hashCode ^
      itemSellPrice.hashCode ^
      itemBuyPrice.hashCode ^
      qty.hashCode ^
      numberPieces.hashCode ^
      supTotal.hashCode ^
      vatValue.hashCode ^
      vatTotal.hashCode ^
      discountValue.hashCode ^
      discountTotal.hashCode ^
      note.hashCode ^
      notePrice.hashCode ^
      netTotal.hashCode ^
      currentQtyAfterMovement.hashCode ^
      avgAfterMovment.hashCode ^
      totalCostAfterMovement.hashCode ^
      isNew.hashCode ^
      isDelete.hashCode ^
      isFinish.hashCode ^
      billId.hashCode ^
      itemId.hashCode ^
      internalQty.hashCode ^
      itemUnitNameAr.hashCode ^
      itemUnitNameEn.hashCode ^
      itemUnitId.hashCode ^
      causeDeletion.hashCode ^
      userId.hashCode ^
      username.hashCode ^
      parentCategoryAr.hashCode ^
      parentCategoryEn.hashCode ^
      itemUnit.hashCode ^
      bill.hashCode ^
      item.hashCode ^
      cookStatusId.hashCode;
}
