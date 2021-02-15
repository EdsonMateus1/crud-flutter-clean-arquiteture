import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/errors/domain_exception.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/delete_album_repository.dart';

abstract class IDeleteAlbum {
  Future<Album> deleteAlbum(int id);
}

class DeleteAlbum implements IDeleteAlbum {
  final IDeleteAlbumRepository repository;
  DeleteAlbum(this.repository);
  @override
  Future<Album> deleteAlbum(int id) async {
    try {
      final Album album = await repository.deleteAlbum(id);
      if (album != null) {
        return album;
      } else {
        throw DomainException("deleteAlbum Exception album not exist");
      }
    } catch (e) {
      throw DomainException("deleteAlbum Exception $e");
    }
  }
}
