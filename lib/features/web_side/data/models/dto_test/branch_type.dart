import 'package:collection/collection.dart';

class BranchType {
  int? id;
  String? name;
  String? nameAr;
  String? nameEn;
  bool? isDelete;

  BranchType({this.id, this.name, this.nameAr, this.nameEn, this.isDelete});

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
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! BranchType) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      nameAr.hashCode ^
      nameEn.hashCode ^
      isDelete.hashCode;
}
