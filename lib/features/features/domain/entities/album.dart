import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Album extends Equatable {
  final int userID;
  final int id;
  final String title;

  Album({@required this.userID, @required this.id, @required this.title});

  @override
  List<Object> get props => [userID, id, title];
}
