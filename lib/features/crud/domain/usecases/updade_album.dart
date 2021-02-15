import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/errors/domain_exception.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/updade_album_repository.dart';

abstract class IUpdadeAlbum {
  Future<Album> call(Album album);
}

class UpdadeAlbum implements IUpdadeAlbum {
  final IUpdadeAlbumRepository repository;
  UpdadeAlbum(this.repository);
  @override
  Future<Album> call(Album album) async {
    try {
      final Album albumres = await repository.updadeAlbum(album);
      if (albumres != null) {
        return albumres;
      } else {
        throw DomainException("UpdadeAlbum Exception album not exist");
      }
    } catch (e) {
      throw DomainException("UpdadeAlbum album Exception $e");
    }
  }
}
