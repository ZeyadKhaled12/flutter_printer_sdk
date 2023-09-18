import 'package:collection/collection.dart';

class Client {
  int? id;
  int? clientTypeId;
  dynamic clientTypeName;
  dynamic name;
  dynamic phone;
  dynamic address;
  int? deliveryFee;
  bool? isDelete;

  Client({
    this.id,
    this.clientTypeId,
    this.clientTypeName,
    this.name,
    this.phone,
    this.address,
    this.deliveryFee,
    this.isDelete,
  });

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        id: json['id'] as int?,
        clientTypeId: json['clientTypeId'] as int?,
        clientTypeName: json['clientTypeName'] as dynamic,
        name: json['name'] as dynamic,
        phone: json['phone'] as dynamic,
        address: json['address'] as dynamic,
        deliveryFee: json['deliveryFee'] as int?,
        isDelete: json['isDelete'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'clientTypeId': clientTypeId,
        'clientTypeName': clientTypeName,
        'name': name,
        'phone': phone,
        'address': address,
        'deliveryFee': deliveryFee,
        'isDelete': isDelete,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Client) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      clientTypeId.hashCode ^
      clientTypeName.hashCode ^
      name.hashCode ^
      phone.hashCode ^
      address.hashCode ^
      deliveryFee.hashCode ^
      isDelete.hashCode;
}
