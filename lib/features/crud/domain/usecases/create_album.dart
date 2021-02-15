import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/errors/domain_exception.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/create_album_repository.dart';
import 'package:flutter/foundation.dart';

abstract class ICreateAlbum {
  Future<Album> call(Album album);
}

class CreateAlbum implements ICreateAlbum {
  final ICreateAlbumrepository repository;
  CreateAlbum({@required this.repository});
  @override
  Future<Album> call(Album album) async {
    try {
      final Album albumres = await repository.createAlbum(album);
      if (albumres != null) {
        return albumres;
      } else {
        throw DomainException("CreateAlbum Exception album not exist");
      }
    } catch (e) {
      throw DomainException("CreateAlbum album Exception $e");
    }
  }
}
