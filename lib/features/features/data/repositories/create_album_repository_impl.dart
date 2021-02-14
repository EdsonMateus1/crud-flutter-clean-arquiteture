import 'package:clean_arquiteture/features/features/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/features/domain/entities/album.dart';
import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/features/domain/repositories/create_album_repository.dart';
import 'package:dartz/dartz.dart';

class CreateAlbumRepository implements ICreateAlbumsepository {
  final IAlbumRemoteCreateAlbumsDataSource createDataSource;

  CreateAlbumRepository(this.createDataSource);
  @override
  Future<Either<Failure, Album>> createAlbums(Album album) async {
    return Right(await createDataSource.createAlbum(album));
  }
}
