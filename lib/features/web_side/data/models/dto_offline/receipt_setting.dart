import 'package:equatable/equatable.dart';

class ReceiptSetting extends Equatable {
  final int? id;
  final bool? isDelete;
  final String? name;
  final String? value;

  const ReceiptSetting({this.id, this.isDelete, this.name, this.value});

  factory ReceiptSetting.fromJson(Map<String, dynamic> json) {
    return ReceiptSetting(
      id: json['id'] as int?,
      isDelete: json['isDelete'] as bool?,
      name: json['name'] as String?,
      value: json['value'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'isDelete': isDelete,
        'name': name,
        'value': value,
      };

  @override
  List<Object?> get props => [id, isDelete, name, value];
}
