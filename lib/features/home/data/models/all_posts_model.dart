class AllPostsModel {
  bool? success;
  String? message;
  Data? data;

  AllPostsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
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

  Data.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      content = <Content>[];
      json['content'].forEach((v) {
        content!.add( Content.fromJson(v));
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
  String? content;
  String? publisherName;
  String? publisherPicture;
  String? creationDate;
  String? updateDate;
  bool? isPublisherPictureExists;
  bool? isLiked;
  bool? isEdited;
  int? likesCount;
  int? attachmentsCount;
  List<Attachments>? attachments;

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    publisherName = json['publisherName'];
    publisherPicture = json['publisherPicture'];
    creationDate = json['creationDate'];
    updateDate = json['updateDate'];
    isPublisherPictureExists = json['isPublisherPictureExists'];
    isLiked = json['isLiked'];
    isEdited = json['isEdited'];
    likesCount = json['likesCount'];
    attachmentsCount = json['attachmentsCount'];
    if (json['attachments'] != null) {
      attachments = <Attachments>[];
      json['attachments'].forEach((v) {
        attachments!.add( Attachments.fromJson(v));
      });
    }
  }
}

class Attachments {
  String? id;
  String? viewLink;
  String? downloadLink;
  bool? isVideo;

  Attachments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    viewLink = json['viewLink'];
    downloadLink = json['downloadLink'];
    isVideo = json['isVideo'];
  }

}
