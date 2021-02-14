import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:dartz/dartz.dart';

abstract class IDeleteAlbumRepository {
  Future<Either<Failure, Album>> deleteAlbum(int id);
}
