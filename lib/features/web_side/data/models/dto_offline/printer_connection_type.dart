import 'package:equatable/equatable.dart';

class PrinterConnectionType extends Equatable {
  final int? id;
  final String? nameAr;
  final String? nameEn;

  const PrinterConnectionType({this.id, this.nameAr, this.nameEn});

  factory PrinterConnectionType.fromJson(Map<String, dynamic> json) {
    return PrinterConnectionType(
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
