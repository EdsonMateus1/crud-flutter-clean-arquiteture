import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:clean_arquiteture/features/features/domain/entities/album.dart';

class AlbumModel extends Album {
  final int userID;
  final int id;
  final String title;

  AlbumModel({@required this.userID, @required this.id, @required this.title})
      : super(
          id: id,
          userID: userID,
          title: title,
        );

  @override
  List<Object> get props => [userID, id, title];

  Map<String, dynamic> toMap() {
    return {
      'userID': userID,
      'id': id,
      'title': title,
    };
  }

  factory AlbumModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return AlbumModel(
      userID: map['userID'],
      id: map['id'],
      title: map['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AlbumModel.fromJson(String source) =>
      AlbumModel.fromMap(json.decode(source));
}
