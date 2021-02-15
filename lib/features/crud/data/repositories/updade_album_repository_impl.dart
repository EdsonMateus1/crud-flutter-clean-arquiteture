import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/updade_album_repository.dart';
import 'package:flutter/foundation.dart';

class UpdadeAlbumRepository implements IUpdadeAlbumRepository {
  final IRemoteUpdadeAlbumDataSource updadeAlbumsDataSource;
  UpdadeAlbumRepository({@required this.updadeAlbumsDataSource});
  @override
  Future<Album> updadeAlbum(Album album) async {
    return await updadeAlbumsDataSource.updadeAlbum(album);
  }
}
