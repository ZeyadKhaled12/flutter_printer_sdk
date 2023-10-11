import 'package:equatable/equatable.dart';

import 'branch.dart';
import 'printer.dart';

class UserFinish extends Equatable {
  final int? id;
  final String? fullName;
  final String? username;
  final String? email;
  final String? currentDateOpen;
  final bool? isDelete;
  final bool? isOpenShift;
  final int? branchId;
  final Branch? branch;
  final int? printerId;
  final Printer? printer;
  final int? boxMoneyId;

  const UserFinish({
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

  factory UserFinish.fromJson(Map<String, dynamic> json) => UserFinish(
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
  List<Object?> get props {
    return [
      id,
      fullName,
      username,
      email,
      currentDateOpen,
      isDelete,
      isOpenShift,
      branchId,
      branch,
      printerId,
      printer,
      boxMoneyId,
    ];
  }
}
