import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/features/domain/entities/album.dart';
import 'package:dartz/dartz.dart';

abstract class GetAlbumRepository {
  Future<Either<Failure, Album>> getAbums(int id);
}
