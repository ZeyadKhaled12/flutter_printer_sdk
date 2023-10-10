import 'package:equatable/equatable.dart';

class Client extends Equatable {
  final int? id;
  final int? clientTypeId;
  final dynamic clientTypeName;
  final dynamic name;
  final dynamic phone;
  final dynamic address;
  final int? deliveryFee;
  final bool? isDelete;

  const Client({
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
  List<Object?> get props {
    return [
      id,
      clientTypeId,
      clientTypeName,
      name,
      phone,
      address,
      deliveryFee,
      isDelete,
    ];
  }
}
