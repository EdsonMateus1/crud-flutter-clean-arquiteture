import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/updade_album_repository.dart';

abstract class IUpdadeAlbum {
  Future<Album> call(Album album);
}

class UpdadeAlbum implements IUpdadeAlbum {
  final IUpdadeAlbumRepository repository;
  UpdadeAlbum(this.repository);
  @override
  Future<Album> call(Album album) {
    return repository.updadeAlbum(album);
  }
}
