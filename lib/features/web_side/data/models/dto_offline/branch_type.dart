import 'package:equatable/equatable.dart';

class BranchType extends Equatable {
  final int? id;
  final String? name;
  final String? nameAr;
  final String? nameEn;
  final bool? isDelete;

  const BranchType({
    this.id,
    this.name,
    this.nameAr,
    this.nameEn,
    this.isDelete,
  });

  factory BranchType.fromJson(Map<String, dynamic> json) => BranchType(
        id: json['id'] as int?,
        name: json['name'] as String?,
        nameAr: json['nameAR'] as String?,
        nameEn: json['nameEN'] as String?,
        isDelete: json['isDelete'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'nameAR': nameAr,
        'nameEN': nameEn,
        'isDelete': isDelete,
      };

  @override
  List<Object?> get props => [id, name, nameAr, nameEn, isDelete];
}
