class EventModel {
  bool? success;
  String? message;
  Data? data;

  EventModel({this.success, this.message, this.data});

  EventModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }
}

class Data {
  List<Content>? content;
  int? totalElementsCount;
  int? totalPagesCount;
  int? pageElementsCount;
  int? pageSize;
  int? pageNumber;
  bool? firstPage;
  bool? lastPage;
  bool? emptyPage;
  bool? sortedPage;

  Data(
      {this.content,
      this.totalElementsCount,
      this.totalPagesCount,
      this.pageElementsCount,
      this.pageSize,
      this.pageNumber,
      this.firstPage,
      this.lastPage,
      this.emptyPage,
      this.sortedPage});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      content = <Content>[];
      json['content'].forEach((v) {
        content!.add(new Content.fromJson(v));
      });
    }
    totalElementsCount = json['totalElementsCount'];
    totalPagesCount = json['totalPagesCount'];
    pageElementsCount = json['pageElementsCount'];
    pageSize = json['pageSize'];
    pageNumber = json['pageNumber'];
    firstPage = json['firstPage'];
    lastPage = json['lastPage'];
    emptyPage = json['emptyPage'];
    sortedPage = json['sortedPage'];
  }
}

class Content {
  int? id;
  String? title;
  String? description;
  String? startDate;
  String? endDate;
  bool? isAttendee;
  List<Null>? attendees;

  Content(
      {this.id,
      this.title,
      this.description,
      this.startDate,
      this.endDate,
      this.isAttendee,
      this.attendees});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    isAttendee = json['isAttendee'];
  }
}
