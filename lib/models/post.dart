// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:faceclone/models/models.dart';

class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final String? imageUrl;
  final int likes;
  final int comments;
  final int shares;
  Post({
    required this.user,
    required this.caption,
    required this.timeAgo,
    this.imageUrl,
    required this.likes,
    required this.comments,
    required this.shares,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user.toMap(),
      'caption': caption,
      'timeAgo': timeAgo,
      'imageUrl': imageUrl,
      'likes': likes,
      'comments': comments,
      'shares': shares,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      user: User.fromMap(map['user'] as Map<String, dynamic>),
      caption: map['caption'] as String,
      timeAgo: map['timeAgo'] as String,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      likes: map['likes'] as int,
      comments: map['comments'] as int,
      shares: map['shares'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) =>
      Post.fromMap(json.decode(source) as Map<String, dynamic>);
}
