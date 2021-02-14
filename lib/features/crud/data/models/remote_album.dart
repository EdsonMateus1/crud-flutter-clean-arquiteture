import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';

class AlbumModel extends Album {
  final int userId;
  final int id;
  final String title;

  AlbumModel({@required this.userId, @required this.id, @required this.title})
      : super(
          id: id,
          userId: userId,
          title: title,
        );

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
    };
  }

  factory AlbumModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return AlbumModel(
      userId: map['userId'],
      id: map['id'],
      title: map['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AlbumModel.fromJson(String source) =>
      AlbumModel.fromMap(json.decode(source));
}
