import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/features/domain/entities/album.dart';
import 'package:dartz/dartz.dart';

abstract class IGetAllAlbumRepository {
  Future<Either<Failure, List<Album>>> getAlbums();
}
