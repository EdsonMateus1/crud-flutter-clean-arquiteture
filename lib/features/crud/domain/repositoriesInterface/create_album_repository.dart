import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:dartz/dartz.dart';

abstract class ICreateAlbumrepository {
  Future<Either<Failure, Album>> createAlbums(Album album);
}
