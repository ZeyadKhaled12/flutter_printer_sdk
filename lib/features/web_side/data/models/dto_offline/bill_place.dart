import 'package:equatable/equatable.dart';

class BillPlace extends Equatable {
  final int? id;
  final String? nameAr;
  final String? nameEn;
  final String? image;

  const BillPlace({this.id, this.nameAr, this.nameEn, this.image});

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
  List<Object?> get props => [id, nameAr, nameEn, image];
}
