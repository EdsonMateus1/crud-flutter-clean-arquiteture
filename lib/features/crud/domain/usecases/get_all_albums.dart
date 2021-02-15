import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/errors/domain_exception.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/get_all_albums_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGetAllAlbums {
  Future<List<Album>> call();
}

class GetAllAlbums implements IGetAllAlbums {
  final IGetAllAlbumRepository repository;
  GetAllAlbums(this.repository);
  @override
  Future<List<Album>> call() async {
    try {
      final List<Album> albums = await repository.getAlbums();
      if (albums != null) {
        return albums;
      } else {
        throw DomainException("GetAllAlbums Exception albums not exist");
      }
    } catch (e) {
      throw DomainException("GetAllAlbums albums Exception:$e");
    }
  }
}
