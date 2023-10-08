import 'package:collection/collection.dart';

import 'branch.dart';
import 'printer.dart';

class User {
  int? id;
  String? fullName;
  String? username;
  String? email;
  String? currentDateOpen;
  bool? isDelete;
  bool? isOpenShift;
  int? branchId;
  Branch? branch;
  int? printerId;
  Printer? printer;
  int? boxMoneyId;

  User({
    this.id,
    this.fullName,
    this.username,
    this.email,
    this.currentDateOpen,
    this.isDelete,
    this.isOpenShift,
    this.branchId,
    this.branch,
    this.printerId,
    this.printer,
    this.boxMoneyId,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as int?,
        fullName: json['fullName'] as String?,
        username: json['username'] as String?,
        email: json['email'] as String?,
        currentDateOpen: json['currentDateOpen'] as String?,
        isDelete: json['isDelete'] as bool?,
        isOpenShift: json['isOpenShift'] as bool?,
        branchId: json['branchId'] as int?,
        branch: json['branch'] == null
            ? null
            : Branch.fromJson(json['branch'] as Map<String, dynamic>),
        printerId: json['printerId'] as int?,
        printer: json['printer'] == null
            ? null
            : Printer.fromJson(json['printer'] as Map<String, dynamic>),
        boxMoneyId: json['boxMoneyId'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'fullName': fullName,
        'username': username,
        'email': email,
        'currentDateOpen': currentDateOpen,
        'isDelete': isDelete,
        'isOpenShift': isOpenShift,
        'branchId': branchId,
        'branch': branch?.toJson(),
        'printerId': printerId,
        'printer': printer?.toJson(),
        'boxMoneyId': boxMoneyId,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! User) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      fullName.hashCode ^
      username.hashCode ^
      email.hashCode ^
      currentDateOpen.hashCode ^
      isDelete.hashCode ^
      isOpenShift.hashCode ^
      branchId.hashCode ^
      branch.hashCode ^
      printerId.hashCode ^
      printer.hashCode ^
      boxMoneyId.hashCode;
}
