class PostCommentsModel {
  bool? success;
  String? message;
  Data? data;

  PostCommentsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

class Data {
  List<CommentContent>? commentContent;
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
      commentContent = <CommentContent>[];
      json['content'].forEach((v) {
        commentContent!.add(CommentContent.fromJson(v));
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

class CommentContent {
  int? id;
  int? postId;
  String? comment;
  String? creatorName;
  String? creatorPicture;
  String? createdDate;
  String? updatedDate;
  bool? isCreatorPictureExists;
  bool? isEdited;
  bool? isLiked;
  int? likesCount;

  CommentContent.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    postId = json['postId'];
    comment = json['comment'];
    creatorName = json['creatorName'];
    creatorPicture = json['creatorPicture'];
    createdDate = json['createdDate'];
    updatedDate = json['updatedDate'];
    isCreatorPictureExists = json['isCreatorPictureExists'];
    isEdited = json['isEdited'];
    isLiked = json['isLiked'];
    likesCount = json['likesCount'];
  }
}
