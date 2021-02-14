import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/errors/domain_exception.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/get_album_repository.dart';

abstract class IGetAlbums {
  Future<Album> call(int id);
}

class GetAlbums implements IGetAlbums {
  final IGetAlbumRepository repository;
  GetAlbums(this.repository);
  @override
  Future<Album> call(int id) async {
    try {
      final Album album = await repository.getAlbum(id);
      if (album != null) {
        return album;
      } else {
        throw DomainException("GetAlbums album not exist");
      }
    } catch (e) {
      throw DomainException(e);
    }
  }
}
