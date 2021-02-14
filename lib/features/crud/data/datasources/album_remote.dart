import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';

abstract class IRemoteCreateAlbumsDataSource {
  Future<Album> createAlbum(Album album);
}

abstract class IRemoteUpdadeAlbumDataSource {
  Future<Album> updadeAlbum(Album album);
}

abstract class IRemoteGetAlbumDataSource {
  Future<Album> getAlbum(int id);
}

abstract class IRemoteGetAlbumsDataSource {
  Future<List<Album>> getAlbums();
}

abstract class IRemoteDeleteAlbumDataSource {
  Future<Album> deleteAlbum(int id);
}
