import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/errors/domain_exception.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/get_album_repository.dart';
import 'package:flutter/foundation.dart';

abstract class IGetAlbum {
  Future<Album> call(int id);
}

class GetAlbum implements IGetAlbum {
  final IGetAlbumRepository repository;
  GetAlbum({@required this.repository});
  @override
  Future<Album> call(int id) async {
    try {
      if (id == null) {
        throw DomainException("GetAlbum Exception. id not exist");
      }
      final Album album = await repository.getAlbum(id);
      if (album != null) {
        return album;
      } else {
        throw DomainException("GetAlbum Exception. Album not exist");
      }
    } catch (e) {
      throw DomainException("GetAlbum album Exception:$e");
    }
  }
}
