import 'package:equatable/equatable.dart';

import 'bill_detail.dart';
import 'bill_place.dart';
import 'branch.dart';
import 'client.dart';
import 'company_info.dart';
import 'payment_type.dart';
import 'receipt_setting.dart';
import 'user.dart';
import 'user_finish.dart';

class DtoOffline extends Equatable {
  final int? id;
  final int? indexId;
  final dynamic offlineOrderNo;
  final dynamic failureReason;
  final String? code;
  final int? orderNo;
  final String? tableNo;
  final dynamic tableCatNameAr;
  final dynamic tableCatNameEn;
  final String? dateOpen;
  final String? date;
  final String? deliveredTime;
  final int? totalQty;
  final int? supTotal;
  final int? totalVat;
  final String? discountValue;
  final int? discountTotal;
  final int? totalAfterDiscount;
  final String? applicationValue;
  final int? applicationTotal;
  final String? serviceValue;
  final double? serviceTotal;
  final int? deliveryFee;
  final double? netTotal;
  final double? paiedCash;
  final int? paiedVisa;
  final dynamic lastPaiedCash;
  final dynamic lastPaiedVisa;
  final int? remaining;
  final String? notes;
  final String? reference;
  final bool? isSave;
  final bool? isPending;
  final bool? isPrint;
  final bool? isRemoveService;
  final dynamic removeServiceId;
  final bool? isQrMenu;
  final bool? isDelete;
  final bool? vatIsActive;
  final dynamic causeDeletion;
  final bool? vatIsTaxesIncluded;
  final int? vatValue;
  final List<BillDetail>? billDetails;
  final List<dynamic>? billTaxes;
  final int? billPlaceId;
  final BillPlace? billPlace;
  final dynamic applicationId;
  final dynamic application;
  final dynamic tableId;
  final dynamic table;
  final int? billTypeId;
  final dynamic billType;
  final dynamic lastPaymentTypeId;
  final dynamic lastPaymentType;
  final int? paymentTypeId;
  final PaymentType? paymentType;
  final int? branchId;
  final Branch? branch;
  final dynamic stockId;
  final dynamic lastStockId;
  final dynamic stock;
  final dynamic lastBoxMoneyCategoriesId;
  final String? boxMoneyCategoriesId;
  final int? userId;
  final User? user;
  final int? userFinishId;
  final UserFinish? userFinish;
  final int? shiftDetailsId;
  final int? boxMoneyId;
  final String? uid;
  final dynamic printerName;
  final int? countCopies;
  final dynamic receiptType;
  final String? lang;
  final String? logo;
  final dynamic qrCode;
  final CompanyInfo? companyInfo;
  final dynamic clientId;
  final dynamic employeeId;
  final dynamic employeeName;
  final dynamic address;
  final Client? client;
  final List<ReceiptSetting>? receiptSettings;
  final bool? isPrintSupervisor;
  final String? printSupervisor;
  final dynamic abkhusTransactionNo;
  final dynamic abkhusErrorMsg;

  const DtoOffline({
    this.id,
    this.indexId,
    this.offlineOrderNo,
    this.failureReason,
    this.code,
    this.orderNo,
    this.tableNo,
    this.tableCatNameAr,
    this.tableCatNameEn,
    this.dateOpen,
    this.date,
    this.deliveredTime,
    this.totalQty,
    this.supTotal,
    this.totalVat,
    this.discountValue,
    this.discountTotal,
    this.totalAfterDiscount,
    this.applicationValue,
    this.applicationTotal,
    this.serviceValue,
    this.serviceTotal,
    this.deliveryFee,
    this.netTotal,
    this.paiedCash,
    this.paiedVisa,
    this.lastPaiedCash,
    this.lastPaiedVisa,
    this.remaining,
    this.notes,
    this.reference,
    this.isSave,
    this.isPending,
    this.isPrint,
    this.isRemoveService,
    this.removeServiceId,
    this.isQrMenu,
    this.isDelete,
    this.vatIsActive,
    this.causeDeletion,
    this.vatIsTaxesIncluded,
    this.vatValue,
    this.billDetails,
    this.billTaxes,
    this.billPlaceId,
    this.billPlace,
    this.applicationId,
    this.application,
    this.tableId,
    this.table,
    this.billTypeId,
    this.billType,
    this.lastPaymentTypeId,
    this.lastPaymentType,
    this.paymentTypeId,
    this.paymentType,
    this.branchId,
    this.branch,
    this.stockId,
    this.lastStockId,
    this.stock,
    this.lastBoxMoneyCategoriesId,
    this.boxMoneyCategoriesId,
    this.userId,
    this.user,
    this.userFinishId,
    this.userFinish,
    this.shiftDetailsId,
    this.boxMoneyId,
    this.uid,
    this.printerName,
    this.countCopies,
    this.receiptType,
    this.lang,
    this.logo,
    this.qrCode,
    this.companyInfo,
    this.clientId,
    this.employeeId,
    this.employeeName,
    this.address,
    this.client,
    this.receiptSettings,
    this.isPrintSupervisor,
    this.printSupervisor,
    this.abkhusTransactionNo,
    this.abkhusErrorMsg,
  });

  factory DtoOffline.fromJson(Map<String, dynamic> json) => DtoOffline(
        id: json['id'] as int?,
        indexId: json['indexId'] as int?,
        offlineOrderNo: json['offlineOrderNo'] as dynamic,
        failureReason: json['failureReason'] as dynamic,
        code: json['code'] as String?,
        orderNo: json['orderNo'] as int?,
        tableNo: json['tableNo'] as String?,
        tableCatNameAr: json['tableCatNameAR'] as dynamic,
        tableCatNameEn: json['tableCatNameEN'] as dynamic,
        dateOpen: json['dateOpen'] as String?,
        date: json['date'] as String?,
        deliveredTime: json['deliveredTime'] as String?,
        totalQty: json['totalQty'] as int?,
        supTotal: json['supTotal'] as int?,
        totalVat: json['totalVAT'] as int?,
        discountValue: json['discountValue'] as String?,
        discountTotal: json['discountTotal'] as int?,
        totalAfterDiscount: json['totalAfterDiscount'] as int?,
        applicationValue: json['applicationValue'] as String?,
        applicationTotal: json['applicationTotal'] as int?,
        serviceValue: json['serviceValue'] as String?,
        serviceTotal: (json['serviceTotal'] as num?)?.toDouble(),
        deliveryFee: json['deliveryFee'] as int?,
        netTotal: (json['netTotal'] as num?)?.toDouble(),
        paiedCash: (json['paiedCash'] as num?)?.toDouble(),
        paiedVisa: json['paiedVisa'] as int?,
        lastPaiedCash: json['lastPaiedCash'] as dynamic,
        lastPaiedVisa: json['lastPaiedVisa'] as dynamic,
        remaining: json['remaining'] as int?,
        notes: json['notes'] as String?,
        reference: json['reference'] as String?,
        isSave: json['isSave'] as bool?,
        isPending: json['isPending'] as bool?,
        isPrint: json['isPrint'] as bool?,
        isRemoveService: json['isRemoveService'] as bool?,
        removeServiceId: json['removeServiceId'] as dynamic,
        isQrMenu: json['isQRMenu'] as bool?,
        isDelete: json['isDelete'] as bool?,
        vatIsActive: json['vatIsActive'] as bool?,
        causeDeletion: json['causeDeletion'] as dynamic,
        vatIsTaxesIncluded: json['vatIsTaxesIncluded'] as bool?,
        vatValue: json['vatValue'] as int?,
        billDetails: (json['billDetails'] as List<dynamic>?)
            ?.map((e) => BillDetail.fromJson(e as Map<String, dynamic>))
            .toList(),
        billTaxes: json['billTaxes'] as List<dynamic>?,
        billPlaceId: json['billPlaceId'] as int?,
        billPlace: json['billPlace'] == null
            ? null
            : BillPlace.fromJson(json['billPlace'] as Map<String, dynamic>),
        applicationId: json['applicationId'] as dynamic,
        application: json['application'] as dynamic,
        tableId: json['tableId'] as dynamic,
        table: json['table'] as dynamic,
        billTypeId: json['billTypeId'] as int?,
        billType: json['billType'] as dynamic,
        lastPaymentTypeId: json['lastPaymentTypeId'] as dynamic,
        lastPaymentType: json['lastPaymentType'] as dynamic,
        paymentTypeId: json['paymentTypeId'] as int?,
        paymentType: json['paymentType'] == null
            ? null
            : PaymentType.fromJson(json['paymentType'] as Map<String, dynamic>),
        branchId: json['branchId'] as int?,
        branch: json['branch'] == null
            ? null
            : Branch.fromJson(json['branch'] as Map<String, dynamic>),
        stockId: json['stockId'] as dynamic,
        lastStockId: json['lastStockId'] as dynamic,
        stock: json['stock'] as dynamic,
        lastBoxMoneyCategoriesId: json['lastBoxMoneyCategoriesId'] as dynamic,
        boxMoneyCategoriesId: json['boxMoneyCategoriesId'] as String?,
        userId: json['userId'] as int?,
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
        userFinishId: json['userFinishId'] as int?,
        userFinish: json['userFinish'] == null
            ? null
            : UserFinish.fromJson(json['userFinish'] as Map<String, dynamic>),
        shiftDetailsId: json['shiftDetailsId'] as int?,
        boxMoneyId: json['boxMoneyId'] as int?,
        uid: json['uid'] as String?,
        printerName: json['printerName'] as dynamic,
        countCopies: json['countCopies'] as int?,
        receiptType: json['receiptType'] as dynamic,
        lang: json['lang'] as String?,
        logo: json['logo'] as String?,
        qrCode: json['qrCode'] as dynamic,
        companyInfo: json['companyInfo'] == null
            ? null
            : CompanyInfo.fromJson(json['companyInfo'] as Map<String, dynamic>),
        clientId: json['clientId'] as dynamic,
        employeeId: json['employeeId'] as dynamic,
        employeeName: json['employeeName'] as dynamic,
        address: json['address'] as dynamic,
        client: json['client'] == null
            ? null
            : Client.fromJson(json['client'] as Map<String, dynamic>),
        receiptSettings: (json['receiptSettings'] as List<dynamic>?)
            ?.map((e) => ReceiptSetting.fromJson(e as Map<String, dynamic>))
            .toList(),
        isPrintSupervisor: json['isPrintSupervisor'] as bool?,
        printSupervisor: json['printSupervisor'] as String?,
        abkhusTransactionNo: json['abkhusTransactionNo'] as dynamic,
        abkhusErrorMsg: json['abkhusErrorMsg'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'indexId': indexId,
        'offlineOrderNo': offlineOrderNo,
        'failureReason': failureReason,
        'code': code,
        'orderNo': orderNo,
        'tableNo': tableNo,
        'tableCatNameAR': tableCatNameAr,
        'tableCatNameEN': tableCatNameEn,
        'dateOpen': dateOpen,
        'date': date,
        'deliveredTime': deliveredTime,
        'totalQty': totalQty,
        'supTotal': supTotal,
        'totalVAT': totalVat,
        'discountValue': discountValue,
        'discountTotal': discountTotal,
        'totalAfterDiscount': totalAfterDiscount,
        'applicationValue': applicationValue,
        'applicationTotal': applicationTotal,
        'serviceValue': serviceValue,
        'serviceTotal': serviceTotal,
        'deliveryFee': deliveryFee,
        'netTotal': netTotal,
        'paiedCash': paiedCash,
        'paiedVisa': paiedVisa,
        'lastPaiedCash': lastPaiedCash,
        'lastPaiedVisa': lastPaiedVisa,
        'remaining': remaining,
        'notes': notes,
        'reference': reference,
        'isSave': isSave,
        'isPending': isPending,
        'isPrint': isPrint,
        'isRemoveService': isRemoveService,
        'removeServiceId': removeServiceId,
        'isQRMenu': isQrMenu,
        'isDelete': isDelete,
        'vatIsActive': vatIsActive,
        'causeDeletion': causeDeletion,
        'vatIsTaxesIncluded': vatIsTaxesIncluded,
        'vatValue': vatValue,
        'billDetails': billDetails?.map((e) => e.toJson()).toList(),
        'billTaxes': billTaxes,
        'billPlaceId': billPlaceId,
        'billPlace': billPlace?.toJson(),
        'applicationId': applicationId,
        'application': application,
        'tableId': tableId,
        'table': table,
        'billTypeId': billTypeId,
        'billType': billType,
        'lastPaymentTypeId': lastPaymentTypeId,
        'lastPaymentType': lastPaymentType,
        'paymentTypeId': paymentTypeId,
        'paymentType': paymentType?.toJson(),
        'branchId': branchId,
        'branch': branch?.toJson(),
        'stockId': stockId,
        'lastStockId': lastStockId,
        'stock': stock,
        'lastBoxMoneyCategoriesId': lastBoxMoneyCategoriesId,
        'boxMoneyCategoriesId': boxMoneyCategoriesId,
        'userId': userId,
        'user': user?.toJson(),
        'userFinishId': userFinishId,
        'userFinish': userFinish?.toJson(),
        'shiftDetailsId': shiftDetailsId,
        'boxMoneyId': boxMoneyId,
        'uid': uid,
        'printerName': printerName,
        'countCopies': countCopies,
        'receiptType': receiptType,
        'lang': lang,
        'logo': logo,
        'qrCode': qrCode,
        'companyInfo': companyInfo?.toJson(),
        'clientId': clientId,
        'employeeId': employeeId,
        'employeeName': employeeName,
        'address': address,
        'client': client?.toJson(),
        'receiptSettings': receiptSettings?.map((e) => e.toJson()).toList(),
        'isPrintSupervisor': isPrintSupervisor,
        'printSupervisor': printSupervisor,
        'abkhusTransactionNo': abkhusTransactionNo,
        'abkhusErrorMsg': abkhusErrorMsg,
      };

  @override
  List<Object?> get props {
    return [
      id,
      indexId,
      offlineOrderNo,
      failureReason,
      code,
      orderNo,
      tableNo,
      tableCatNameAr,
      tableCatNameEn,
      dateOpen,
      date,
      deliveredTime,
      totalQty,
      supTotal,
      totalVat,
      discountValue,
      discountTotal,
      totalAfterDiscount,
      applicationValue,
      applicationTotal,
      serviceValue,
      serviceTotal,
      deliveryFee,
      netTotal,
      paiedCash,
      paiedVisa,
      lastPaiedCash,
      lastPaiedVisa,
      remaining,
      notes,
      reference,
      isSave,
      isPending,
      isPrint,
      isRemoveService,
      removeServiceId,
      isQrMenu,
      isDelete,
      vatIsActive,
      causeDeletion,
      vatIsTaxesIncluded,
      vatValue,
      billDetails,
      billTaxes,
      billPlaceId,
      billPlace,
      applicationId,
      application,
      tableId,
      table,
      billTypeId,
      billType,
      lastPaymentTypeId,
      lastPaymentType,
      paymentTypeId,
      paymentType,
      branchId,
      branch,
      stockId,
      lastStockId,
      stock,
      lastBoxMoneyCategoriesId,
      boxMoneyCategoriesId,
      userId,
      user,
      userFinishId,
      userFinish,
      shiftDetailsId,
      boxMoneyId,
      uid,
      printerName,
      countCopies,
      receiptType,
      lang,
      logo,
      qrCode,
      companyInfo,
      clientId,
      employeeId,
      employeeName,
      address,
      client,
      receiptSettings,
      isPrintSupervisor,
      printSupervisor,
      abkhusTransactionNo,
      abkhusErrorMsg,
    ];
  }
}
