import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/errors/domain_exception.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/create_album_repository.dart';
import 'package:flutter/foundation.dart';

abstract class ICreateAlbum {
  Future<Album> call(Album newAlbum);
}

class CreateAlbum implements ICreateAlbum {
  final ICreateAlbumrepository repository;
  CreateAlbum({@required this.repository});
  @override
  Future<Album> call(Album newAlbum) async {
    try {
      if (newAlbum == null) {
        throw DomainException("CreateAlbum Exception. NewAlbum not exist");
      }
      final Album album = await repository.createAlbum(newAlbum);
      if (album != null) {
        return album;
      } else {
        throw DomainException("CreateAlbum Exception. Album not exist");
      }
    } catch (e) {
      throw DomainException("CreateAlbum album Exception $e");
    }
  }
}
