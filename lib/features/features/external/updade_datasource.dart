import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/features/data/datasources/album_remote.dart';
import 'package:dartz/dartz.dart';
import 'package:clean_arquiteture/features/features/domain/entities/album.dart';

class AlbumRemoteUpdadeDataSource implements IAlbumRemoteUpdadeDataSource {
  @override
  Future<Either<Failure, Album>> updadeAlbum(Album album) {
    // TODO: implement updadeAlbum
    throw UnimplementedError();
  }
}
