import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/get_all_albums_repository.dart';
import 'package:flutter/foundation.dart';

class GetAllAlbumsRepository implements IGetAllAlbumRepository {
  final IRemoteGetAlbumsDataSource getAlbumsDataSource;
  GetAllAlbumsRepository({@required this.getAlbumsDataSource});
  @override
  Future<List<Album>> getAlbums() async {
    return await getAlbumsDataSource.getAlbums();
  }
}
