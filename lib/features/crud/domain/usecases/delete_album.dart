import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/delete_album_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IDeleteAlbum {
  Future<Either<Failure, Album>> deleteAlbum(int id);
}

class DeleteAlbum implements IDeleteAlbum {
  final IDeleteAlbumRepository repository;
  DeleteAlbum(this.repository);
  @override
  Future<Either<Failure, Album>> deleteAlbum(int id) async {
    return await repository.deleteAlbum(id);
  }
}
