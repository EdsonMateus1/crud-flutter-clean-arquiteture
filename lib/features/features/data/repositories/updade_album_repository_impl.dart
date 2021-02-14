import 'package:clean_arquiteture/features/features/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/features/domain/entities/album.dart';
import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/features/domain/repositoriesInterface/updade_album_repository.dart';
import 'package:dartz/dartz.dart';

class UpdadeAlbumRepository implements IUpdadeAlbumRepository {
  final IRemoteUpdadeAlbumsDataSource updadeAlbumsDataSource;
  UpdadeAlbumRepository(this.updadeAlbumsDataSource);
  @override
  Future<Either<Failure, Album>> updadeAlbum(Album album) async {
    return Right(await updadeAlbumsDataSource.updadeAlbum(album));
  }
}
