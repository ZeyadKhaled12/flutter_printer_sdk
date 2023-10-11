import 'package:equatable/equatable.dart';

class PrinterBrand extends Equatable {
  final int? id;
  final bool? isDelete;
  final String? name;

  const PrinterBrand({this.id, this.isDelete, this.name});

  factory PrinterBrand.fromJson(Map<String, dynamic> json) => PrinterBrand(
        id: json['id'] as int?,
        isDelete: json['isDelete'] as bool?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'isDelete': isDelete,
        'name': name,
      };

  @override
  List<Object?> get props => [id, isDelete, name];
}
