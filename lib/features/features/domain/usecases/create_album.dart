import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/features/domain/entities/album.dart';
import 'package:clean_arquiteture/features/features/domain/repositories/create_album_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class ICreateAlbum {
  Future<Either<Failure, Album>> call(Album album);
}

class CreateAlbum implements ICreateAlbum {
  final ICreateAlbumsepository repository;
  CreateAlbum({@required this.repository});
  @override
  Future<Either<Failure, Album>> call(Album album) async {
    return await repository.createAlbums(album);
  }
}
