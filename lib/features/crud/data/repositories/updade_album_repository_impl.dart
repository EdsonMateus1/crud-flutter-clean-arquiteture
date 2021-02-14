import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/updade_album_repository.dart';
import 'package:dartz/dartz.dart';

class UpdadeAlbumRepository implements IUpdadeAlbumRepository {
  final IRemoteUpdadeAlbumDataSource updadeAlbumsDataSource;
  UpdadeAlbumRepository(this.updadeAlbumsDataSource);
  @override
  Future<Either<Failure, Album>> updadeAlbum(Album album) async {
    return Right(await updadeAlbumsDataSource.updadeAlbum(album));
  }
}
