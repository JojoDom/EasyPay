// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    UserModel({
        required this.status,
        required this.data,
        required this.count,
        required this.message,
    });

    bool status;
    Data data;
    int count;
    String message;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        status: json["status"],
        data: Data.fromJson(json["data"]),
        count: json["count"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
        "count": count,
        "message": message,
    };
}

class Data {
    Data({
        this.amount,
        this.currency,
        this.comment,
        required this.success,
        this.transactionId,
        this.receiptNo,
        this.orderId,
        required this.status,
        required this.description,
        this.serviceProvider,
        this.transactionSource,
        this.transactionDate,
        this.transactionType,
        this.reference,
        this.serviceName,
        this.user,
        this.branch,
        this.payerName,
        this.payerContact,
        this.billerLogoUrl,
        this.integratorLogoUrl,
        this.creditDebitFlag,
        this.canReverse,
        required this.reversalPending,
        this.reversalReason,
        this.reversalRequestedBy,
        this.reversalEffectedBy,
        this.markupFee,
        this.customerName,
        this.paymentMode,
        this.referenceField,
        this.contactField,
        this.statusMessage,
        this.chequeNo,
        this.denominations,
        this.details,
        this.dateToSettle,
        this.settled,
        this.settledOn,
        this.exchangeRate,
        this.serviceCode,
        this.isRefund,
        this.refunded,
        required this.providerError,
        this.serviceType,
    });

    dynamic amount;
    dynamic currency;
    dynamic comment;
    bool success;
    dynamic transactionId;
    dynamic receiptNo;
    dynamic orderId;
    String status;
    String description;
    dynamic serviceProvider;
    dynamic transactionSource;
    dynamic transactionDate;
    dynamic transactionType;
    dynamic reference;
    dynamic serviceName;
    dynamic user;
    dynamic branch;
    dynamic payerName;
    dynamic payerContact;
    dynamic billerLogoUrl;
    dynamic integratorLogoUrl;
    dynamic creditDebitFlag;
    dynamic canReverse;
    bool reversalPending;
    dynamic reversalReason;
    dynamic reversalRequestedBy;
    dynamic reversalEffectedBy;
    dynamic markupFee;
    dynamic customerName;
    dynamic paymentMode;
    dynamic referenceField;
    dynamic contactField;
    dynamic statusMessage;
    dynamic chequeNo;
    dynamic denominations;
    dynamic details;
    dynamic dateToSettle;
    dynamic settled;
    dynamic settledOn;
    dynamic exchangeRate;
    dynamic serviceCode;
    dynamic isRefund;
    dynamic refunded;
    bool providerError;
    dynamic serviceType;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        amount: json["amount"],
        currency: json["currency"],
        comment: json["comment"],
        success: json["success"],
        transactionId: json["transactionId"],
        receiptNo: json["receiptNo"],
        orderId: json["orderId"],
        status: json["status"],
        description: json["description"],
        serviceProvider: json["serviceProvider"],
        transactionSource: json["transactionSource"],
        transactionDate: json["transactionDate"],
        transactionType: json["transactionType"],
        reference: json["reference"],
        serviceName: json["serviceName"],
        user: json["user"],
        branch: json["branch"],
        payerName: json["payerName"],
        payerContact: json["payerContact"],
        billerLogoUrl: json["billerLogoUrl"],
        integratorLogoUrl: json["integratorLogoUrl"],
        creditDebitFlag: json["creditDebitFlag"],
        canReverse: json["canReverse"],
        reversalPending: json["reversalPending"],
        reversalReason: json["reversalReason"],
        reversalRequestedBy: json["reversalRequestedBy"],
        reversalEffectedBy: json["reversalEffectedBy"],
        markupFee: json["markupFee"],
        customerName: json["customerName"],
        paymentMode: json["paymentMode"],
        referenceField: json["referenceField"],
        contactField: json["contactField"],
        statusMessage: json["statusMessage"],
        chequeNo: json["chequeNo"],
        denominations: json["denominations"],
        details: json["details"],
        dateToSettle: json["dateToSettle"],
        settled: json["settled"],
        settledOn: json["settledOn"],
        exchangeRate: json["exchangeRate"],
        serviceCode: json["serviceCode"],
        isRefund: json["isRefund"],
        refunded: json["refunded"],
        providerError: json["providerError"],
        serviceType: json["serviceType"],
    );

    Map<String, dynamic> toJson() => {
        "amount": amount,
        "currency": currency,
        "comment": comment,
        "success": success,
        "transactionId": transactionId,
        "receiptNo": receiptNo,
        "orderId": orderId,
        "status": status,
        "description": description,
        "serviceProvider": serviceProvider,
        "transactionSource": transactionSource,
        "transactionDate": transactionDate,
        "transactionType": transactionType,
        "reference": reference,
        "serviceName": serviceName,
        "user": user,
        "branch": branch,
        "payerName": payerName,
        "payerContact": payerContact,
        "billerLogoUrl": billerLogoUrl,
        "integratorLogoUrl": integratorLogoUrl,
        "creditDebitFlag": creditDebitFlag,
        "canReverse": canReverse,
        "reversalPending": reversalPending,
        "reversalReason": reversalReason,
        "reversalRequestedBy": reversalRequestedBy,
        "reversalEffectedBy": reversalEffectedBy,
        "markupFee": markupFee,
        "customerName": customerName,
        "paymentMode": paymentMode,
        "referenceField": referenceField,
        "contactField": contactField,
        "statusMessage": statusMessage,
        "chequeNo": chequeNo,
        "denominations": denominations,
        "details": details,
        "dateToSettle": dateToSettle,
        "settled": settled,
        "settledOn": settledOn,
        "exchangeRate": exchangeRate,
        "serviceCode": serviceCode,
        "isRefund": isRefund,
        "refunded": refunded,
        "providerError": providerError,
        "serviceType": serviceType,
    };
}
