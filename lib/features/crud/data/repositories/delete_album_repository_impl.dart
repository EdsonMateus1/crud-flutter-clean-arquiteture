import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/delete_album_repository.dart';
import 'package:dartz/dartz.dart';

class DeleteAlbumRepository implements IDeleteAlbumRepository {
  final IRemoteDeleteAlbumDataSource deleteAlbumDataSource;
  DeleteAlbumRepository(this.deleteAlbumDataSource);
  @override
  Future<Either<Failure, Album>> deleteAlbum(int id) async {
    return Right(await deleteAlbumDataSource.deleteAlbum(id));
  }
}
