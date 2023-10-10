import 'package:equatable/equatable.dart';

import 'branch_type.dart';

class Branch extends Equatable {
  final int? id;
  final String? nameAr;
  final String? nameEn;
  final dynamic workFrom;
  final dynamic workTo;
  final dynamic phone;
  final dynamic address;
  final bool? isDelete;
  final dynamic parentId;
  final dynamic parent;
  final int? branchTypeId;
  final BranchType? branchType;
  final dynamic cityId;

  const Branch({
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
    this.cityId,
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
        cityId: json['cityId'] as dynamic,
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
        'cityId': cityId,
      };

  @override
  List<Object?> get props {
    return [
      id,
      nameAr,
      nameEn,
      workFrom,
      workTo,
      phone,
      address,
      isDelete,
      parentId,
      parent,
      branchTypeId,
      branchType,
      cityId,
    ];
  }
}
