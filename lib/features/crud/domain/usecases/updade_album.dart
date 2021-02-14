import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/updade_album_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IUpdadeAlbum {
  Future<Either<Failure, Album>> call(Album album);
}

class UpdadeAlbum implements IUpdadeAlbum {
  final IUpdadeAlbumRepository repository;
  UpdadeAlbum(this.repository);
  @override
  Future<Either<Failure, Album>> call(Album album) {
    return repository.updadeAlbum(album);
  }
}
