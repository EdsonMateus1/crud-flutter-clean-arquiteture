import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/features/domain/entities/album.dart';
import 'package:clean_arquiteture/features/features/domain/repositoriesInterface/get_all_albums_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetAllAlbums {
  Future<Either<Failure, List<Album>>> call();
}

class GetAllAlbums implements IGetAllAlbums {
  final IGetAllAlbumRepository repository;
  GetAllAlbums(this.repository);
  @override
  Future<Either<Failure, List<Album>>> call() async {
    return await repository.getAlbums();
  }
}
