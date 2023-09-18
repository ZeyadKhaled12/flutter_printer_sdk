import 'package:collection/collection.dart';

class BillPlace {
  int? id;
  String? nameAr;
  String? nameEn;
  String? image;

  BillPlace({this.id, this.nameAr, this.nameEn, this.image});

  factory BillPlace.fromJson(Map<String, dynamic> json) => BillPlace(
        id: json['id'] as int?,
        nameAr: json['nameAR'] as String?,
        nameEn: json['nameEN'] as String?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nameAR': nameAr,
        'nameEN': nameEn,
        'image': image,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! BillPlace) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^ nameAr.hashCode ^ nameEn.hashCode ^ image.hashCode;
}
