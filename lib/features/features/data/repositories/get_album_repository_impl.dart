import 'package:clean_arquiteture/features/features/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/features/domain/entities/album.dart';
import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/features/domain/repositories/get_album_repository.dart';
import 'package:dartz/dartz.dart';

class GetAlbumRepository implements IGetAlbumRepository {
  final IAlbumRemoteGetAlbumsDataSource getAlbumsDataSource;
  GetAlbumRepository(this.getAlbumsDataSource);

  @override
  Future<Either<Failure, Album>> getAbums(int id) async {
    return Right(await getAlbumsDataSource.getAbum(id));
  }
}
