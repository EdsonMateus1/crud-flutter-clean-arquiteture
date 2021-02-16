import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/errors/domain_exception.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/delete_album_repository.dart';
import 'package:flutter/foundation.dart';

abstract class IDeleteAlbum {
  Future<Album> call(int id);
}

class DeleteAlbum implements IDeleteAlbum {
  final IDeleteAlbumRepository repository;
  DeleteAlbum({@required this.repository});
  @override
  Future<Album> call(int id) async {
    try {
      if (id == null) {
        throw DomainException("deleteAlbum Exception. id not exist");
      }
      final Album album = await repository.deleteAlbum(id);
      if (album != null) {
        return album;
      } else {
        throw DomainException("deleteAlbum Exception. Album not exist");
      }
    } catch (e) {
      throw DomainException("deleteAlbum Exception $e");
    }
  }
}
