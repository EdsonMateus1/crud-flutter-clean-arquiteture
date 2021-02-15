import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/errors/domain_exception.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/updade_album_repository.dart';
import 'package:flutter/foundation.dart';

abstract class IUpdadeAlbum {
  Future<Album> call(Album album);
}

class UpdadeAlbum implements IUpdadeAlbum {
  final IUpdadeAlbumRepository repository;
  UpdadeAlbum({@required this.repository});
  @override
  Future<Album> call(Album album) async {
    try {
      if (album == null) {
        throw DomainException("UpdadeAlbum Exception. Album not exist");
      }
      final Album newAlbum = await repository.updadeAlbum(album);
      if (newAlbum != null) {
        return newAlbum;
      } else {
        throw DomainException("UpdadeAlbum Exception. NewAlbum not exist");
      }
    } catch (e) {
      throw DomainException("UpdadeAlbum album Exception $e");
    }
  }
}
