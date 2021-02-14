import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/features/data/datasources/album_remote.dart';
import 'package:dartz/dartz.dart';
import 'package:clean_arquiteture/features/features/domain/entities/album.dart';

class AlbumRemoteCreateDataSource implements IAlbumRemoteCreateDataSource {
  @override
  Future<Either<Failure, Album>> createAlbums(Album album) {
    // TODO: implement createAlbums
    throw UnimplementedError();
  }
}
