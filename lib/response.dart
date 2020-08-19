class ResponseServer {
  int status;
  List<Data> data;
  String msg;

  ResponseServer({this.status, this.data, this.msg});

  ResponseServer.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['msg'] = this.msg;
    return data;
  }
}

class Data {
  String userId;
  String userFullName;
  String userName;
  String transactionId;
  String transactionCreateBy;
  String transactionReceiverID;
  String transactionWalletType;
  int transactionType;
  String transactionCode;
  String transactionDate;
  double transactionAmount;
  int transactionAmountVND;
  double transactionSurplus;
  String transactionContent;

  Data(
      {this.userId,
      this.userFullName,
      this.userName,
      this.transactionId,
      this.transactionCreateBy,
      this.transactionReceiverID,
      this.transactionWalletType,
      this.transactionType,
      this.transactionCode,
      this.transactionDate,
      this.transactionAmount,
      this.transactionAmountVND,
      this.transactionSurplus,
      this.transactionContent});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['UserId'];
    userFullName = json['UserFullName'];
    userName = json['UserName'];
    transactionId = json['TransactionId'];
    transactionCreateBy = json['TransactionCreateBy'];
    transactionReceiverID = json['TransactionReceiverID'];
    transactionWalletType = json['TransactionWalletType'];
    transactionType = json['TransactionType'];
    transactionCode = json['TransactionCode'];
    transactionDate = json['TransactionDate'];
    transactionAmount = json['TransactionAmount'].toDouble();
    transactionAmountVND = json['TransactionAmount_VND'];
    transactionSurplus = json['TransactionSurplus'].toDouble();
    transactionContent = json['TransactionContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserId'] = this.userId;
    data['UserFullName'] = this.userFullName;
    data['UserName'] = this.userName;
    data['TransactionId'] = this.transactionId;
    data['TransactionCreateBy'] = this.transactionCreateBy;
    data['TransactionReceiverID'] = this.transactionReceiverID;
    data['TransactionWalletType'] = this.transactionWalletType;
    data['TransactionType'] = this.transactionType;
    data['TransactionCode'] = this.transactionCode;
    data['TransactionDate'] = this.transactionDate;
    data['TransactionAmount'] = this.transactionAmount;
    data['TransactionAmount_VND'] = this.transactionAmountVND;
    data['TransactionSurplus'] = this.transactionSurplus;
    data['TransactionContent'] = this.transactionContent;
    return data;
  }
}
