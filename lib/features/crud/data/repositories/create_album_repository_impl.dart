import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/create_album_repository.dart';
import 'package:flutter/foundation.dart';

class CreateAlbumRepository implements ICreateAlbumrepository {
  final IRemoteCreateAlbumDataSource createAlbumDataSource;
  CreateAlbumRepository({@required this.createAlbumDataSource});
  @override
  Future<Album> createAlbum(Album album) async {
    return await createAlbumDataSource.createAlbum(album);
  }
}
