import 'package:clean_arquiteture/features/features/domain/entities/album.dart';

abstract class IRemoteCreateAlbumsDataSource {
  Future<Album> createAlbum(Album album);
}

abstract class IRemoteUpdadeAlbumsDataSource {
  Future<Album> updadeAlbum(Album album);
}

abstract class IRemoteGetAlbumDataSource {
  Future<Album> getAlbum(int id);
}

abstract class IRemoteGetAlbumsDataSource {
  Future<List<Album>> getAlbums();
}
