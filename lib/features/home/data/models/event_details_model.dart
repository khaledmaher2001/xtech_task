class FeeDetailsModel {
  bool? success;
  String? message;
  Data? data;

  FeeDetailsModel({this.success, this.message, this.data});

  FeeDetailsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }
}

class Data {
  dynamic invoiceId;
  String? studentName;
  String? studyLevel;
  String? semesterName;
  String? year;
  String? creationDate;
  String? updateDate;
  String? dueDate;
  dynamic totalAmount;
  dynamic paidAmount;
  dynamic discountAmount;
  dynamic taxAmount;
  dynamic dueAmount;
  String? discountDescription;
  String? taxDescription;
  String? paymentStatus;
  List<InvoiceItems>? invoiceItems;

  Data(
      {this.invoiceId,
        this.studentName,
        this.studyLevel,
        this.semesterName,
        this.year,
        this.creationDate,
        this.updateDate,
        this.dueDate,
        this.totalAmount,
        this.paidAmount,
        this.discountAmount,
        this.taxAmount,
        this.dueAmount,
        this.discountDescription,
        this.taxDescription,
        this.paymentStatus,
        this.invoiceItems});

  Data.fromJson(Map<String, dynamic> json) {
    invoiceId = json['invoiceId'];
    studentName = json['studentName'];
    studyLevel = json['studyLevel'];
    semesterName = json['semesterName'];
    year = json['year'];
    creationDate = json['creationDate'];
    updateDate = json['updateDate'];
    dueDate = json['dueDate'];
    totalAmount = json['totalAmount'];
    paidAmount = json['paidAmount'];
    discountAmount = json['discountAmount'];
    taxAmount = json['taxAmount'];
    dueAmount = json['dueAmount'];
    discountDescription = json['discountDescription'];
    taxDescription = json['taxDescription'];
    paymentStatus = json['paymentStatus'];
    if (json['invoiceItems'] != null) {
      invoiceItems = <InvoiceItems>[];
      json['invoiceItems'].forEach((v) {
        invoiceItems!.add(new InvoiceItems.fromJson(v));
      });
    }
  }

}
class InvoiceItems {
  int? id;
  dynamic totalAmount;
  String? title;
  String? description;

  InvoiceItems({this.id, this.totalAmount, this.title, this.description});

  InvoiceItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    totalAmount = json['totalAmount'];
    title = json['title'];
    description = json['description'];
  }

}