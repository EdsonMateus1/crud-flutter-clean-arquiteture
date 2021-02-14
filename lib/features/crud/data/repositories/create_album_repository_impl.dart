import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/create_album_repository.dart';
import 'package:dartz/dartz.dart';

class CreateAlbumRepository implements ICreateAlbumrepository {
  final IRemoteCreateAlbumsDataSource createAlbumDataSource;
  CreateAlbumRepository(this.createAlbumDataSource);
  @override
  Future<Either<Failure, Album>> createAlbums(Album album) async {
    return Right(await createAlbumDataSource.createAlbum(album));
  }
}
