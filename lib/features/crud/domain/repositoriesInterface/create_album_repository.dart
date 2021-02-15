import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';

abstract class ICreateAlbumrepository {
  Future<Album> createAlbum(Album album);
}
