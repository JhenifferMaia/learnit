class Network {
  late final String photo;
  late final String author;
  late final String avatar;
  late final String date;
  late final String type;
  late final int likeCount;
  late final int commentCount;
  late final String caption;
  // late final List<String> tags;

  Network({
    required this.photo,
    required this.author,
    required this.avatar,
    required this.date,
    required this.type,
    required this.likeCount,
    required this.commentCount,
    required this.caption,
    // required this.tags,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['url_avatar'] = avatar;
    data['author'] = author;
    data['type'] = type;
    data['city'] = caption;
    data['urlPost'] = photo;
    data['date'] = date;
    data['likeCount'] = likeCount;
    data['commentCount'] = commentCount;

    return data;
  }

  Network.fromJson(Map<String, dynamic> json) {
    avatar = json['url_avatar'];
    author = json['author'];
    type = json['type'];
    caption = json['caption'];
    photo = json['url_post'];
    date = json['date'];
    likeCount = json['likeCount'];
    commentCount = json['commentCount'];
  }
}
