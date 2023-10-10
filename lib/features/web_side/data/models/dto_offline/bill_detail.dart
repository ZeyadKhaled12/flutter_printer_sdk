import 'package:equatable/equatable.dart';

import 'item.dart';
import 'item_unit.dart';

class BillDetail extends Equatable {
  final int? id;
  final String? dateOpen;
  final String? date;
  final int? itemSellPrice;
  final int? itemBuyPrice;
  final int? qty;
  final int? numberPieces;
  final int? supTotal;
  final String? vatValue;
  final int? vatTotal;
  final String? discountValue;
  final int? discountTotal;
  final String? note;
  final int? notePrice;
  final int? netTotal;
  final int? currentQtyAfterMovement;
  final int? avgAfterMovment;
  final int? totalCostAfterMovement;
  final bool? isNew;
  final bool? isDelete;
  final bool? isFinish;
  final int? billId;
  final int? itemId;
  final int? internalQty;
  final dynamic itemUnitNameAr;
  final dynamic itemUnitNameEn;
  final int? itemUnitId;
  final dynamic causeDeletion;
  final int? userId;
  final String? username;
  final String? parentCategoryAr;
  final String? parentCategoryEn;
  final ItemUnit? itemUnit;
  final Item? item;
  final dynamic cookStatusId;

  const BillDetail({
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
        'item': item?.toJson(),
        'cookStatusId': cookStatusId,
      };

  @override
  List<Object?> get props {
    return [
      id,
      dateOpen,
      date,
      itemSellPrice,
      itemBuyPrice,
      qty,
      numberPieces,
      supTotal,
      vatValue,
      vatTotal,
      discountValue,
      discountTotal,
      note,
      notePrice,
      netTotal,
      currentQtyAfterMovement,
      avgAfterMovment,
      totalCostAfterMovement,
      isNew,
      isDelete,
      isFinish,
      billId,
      itemId,
      internalQty,
      itemUnitNameAr,
      itemUnitNameEn,
      itemUnitId,
      causeDeletion,
      userId,
      username,
      parentCategoryAr,
      parentCategoryEn,
      itemUnit,
      item,
      cookStatusId,
    ];
  }
}
