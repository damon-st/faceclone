// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:faceclone/models/models.dart';

class Story {
  final User user;
  final String imageUrl;
  final bool isViewed;
  Story({
    required this.user,
    required this.imageUrl,
    required this.isViewed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user.toMap(),
      'imageUrl': imageUrl,
      'isViewed': isViewed,
    };
  }

  factory Story.fromMap(Map<String, dynamic> map) {
    return Story(
      user: User.fromMap(map['user'] as Map<String, dynamic>),
      imageUrl: map['imageUrl'] as String,
      isViewed: map['isViewed'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Story.fromJson(String source) =>
      Story.fromMap(json.decode(source) as Map<String, dynamic>);
}
