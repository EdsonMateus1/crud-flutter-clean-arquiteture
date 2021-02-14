import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';

abstract class IUpdadeAlbumRepository {
  Future<Album> updadeAlbum(Album album);
}
