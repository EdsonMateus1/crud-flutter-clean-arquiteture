import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/errors/domain_exception.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/get_all_albums_repository.dart';
import 'package:flutter/foundation.dart';

abstract class IGetAllAlbums {
  Future<List<Album>> call();
}

class GetAllAlbums implements IGetAllAlbums {
  final IGetAllAlbumsRepository repository;
  GetAllAlbums({@required this.repository});
  @override
  Future<List<Album>> call() async {
    try {
      List<Album> albums = await repository.getAlbums();
      if (albums != null) {
        return albums;
      } else {
        throw DomainException("GetAllAlbums Exception. Albums not exist");
      }
    } catch (e) {
      throw DomainException("GetAllAlbums albums Exception:$e");
    }
  }
}
