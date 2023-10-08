import 'package:collection/collection.dart';

import 'branch_type.dart';

class Branch {
  int? id;
  String? nameAr;
  String? nameEn;
  dynamic workFrom;
  dynamic workTo;
  dynamic phone;
  dynamic address;
  bool? isDelete;
  dynamic parentId;
  dynamic parent;
  int? branchTypeId;
  BranchType? branchType;

  Branch({
    this.id,
    this.nameAr,
    this.nameEn,
    this.workFrom,
    this.workTo,
    this.phone,
    this.address,
    this.isDelete,
    this.parentId,
    this.parent,
    this.branchTypeId,
    this.branchType,
  });

  factory Branch.fromJson(Map<String, dynamic> json) => Branch(
        id: json['id'] as int?,
        nameAr: json['nameAR'] as String?,
        nameEn: json['nameEN'] as String?,
        workFrom: json['workFrom'] as dynamic,
        workTo: json['workTo'] as dynamic,
        phone: json['phone'] as dynamic,
        address: json['address'] as dynamic,
        isDelete: json['isDelete'] as bool?,
        parentId: json['parentId'] as dynamic,
        parent: json['parent'] as dynamic,
        branchTypeId: json['branchTypeId'] as int?,
        branchType: json['branchType'] == null
            ? null
            : BranchType.fromJson(json['branchType'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nameAR': nameAr,
        'nameEN': nameEn,
        'workFrom': workFrom,
        'workTo': workTo,
        'phone': phone,
        'address': address,
        'isDelete': isDelete,
        'parentId': parentId,
        'parent': parent,
        'branchTypeId': branchTypeId,
        'branchType': branchType?.toJson(),
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Branch) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      nameAr.hashCode ^
      nameEn.hashCode ^
      workFrom.hashCode ^
      workTo.hashCode ^
      phone.hashCode ^
      address.hashCode ^
      isDelete.hashCode ^
      parentId.hashCode ^
      parent.hashCode ^
      branchTypeId.hashCode ^
      branchType.hashCode;
}
