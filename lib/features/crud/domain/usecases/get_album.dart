import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/get_album_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetAlbums {
  Future<Either<Failure, Album>> call(int id);
}

class GetAlbums implements IGetAlbums {
  final IGetAlbumRepository repository;
  GetAlbums(this.repository);
  @override
  Future<Either<Failure, Album>> call(int id) async {
    return await repository.getAlbum(id);
  }
}
