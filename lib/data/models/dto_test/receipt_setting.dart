import 'package:collection/collection.dart';

class ReceiptSetting {
  int? id;
  bool? isDelete;
  String? name;
  String? value;

  ReceiptSetting({this.id, this.isDelete, this.name, this.value});

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
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ReceiptSetting) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^ isDelete.hashCode ^ name.hashCode ^ value.hashCode;
}
