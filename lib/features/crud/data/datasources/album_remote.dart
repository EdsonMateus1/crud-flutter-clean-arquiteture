import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';

abstract class IRemoteCreateAlbumDataSource {
  Future<Album> createAlbum(Album album);
}

abstract class IRemoteUpdadeAlbumDataSource {
  Future<Album> updadeAlbum(Album album);
}

abstract class IRemoteGetAlbumDataSource {
  Future<Album> getAlbum(int id);
}

abstract class IRemoteGetAllAlbumsDataSource {
  Future<List<Album>> getAlbums();
}

abstract class IRemoteDeleteAlbumDataSource {
  Future<Album> deleteAlbum(int id);
}
