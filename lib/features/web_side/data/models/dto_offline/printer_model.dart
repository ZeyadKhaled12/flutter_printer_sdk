import 'package:equatable/equatable.dart';

class PrinterModel extends Equatable {
  final int? id;
  final bool? isDelete;
  final String? name;
  final int? prot;

  const PrinterModel({this.id, this.isDelete, this.name, this.prot});

  factory PrinterModel.fromJson(Map<String, dynamic> json) => PrinterModel(
        id: json['id'] as int?,
        isDelete: json['isDelete'] as bool?,
        name: json['name'] as String?,
        prot: json['prot'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'isDelete': isDelete,
        'name': name,
        'prot': prot,
      };

  @override
  List<Object?> get props => [id, isDelete, name, prot];
}
