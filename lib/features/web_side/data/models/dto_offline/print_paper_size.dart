import 'package:equatable/equatable.dart';

class PrintPaperSize extends Equatable {
  final int? id;
  final String? nameAr;
  final String? nameEn;

  const PrintPaperSize({this.id, this.nameAr, this.nameEn});

  factory PrintPaperSize.fromJson(Map<String, dynamic> json) {
    return PrintPaperSize(
      id: json['id'] as int?,
      nameAr: json['nameAR'] as String?,
      nameEn: json['nameEN'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nameAR': nameAr,
        'nameEN': nameEn,
      };

  @override
  List<Object?> get props => [id, nameAr, nameEn];
}
