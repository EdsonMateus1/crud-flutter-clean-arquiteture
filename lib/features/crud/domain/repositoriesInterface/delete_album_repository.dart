import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';

abstract class IDeleteAlbumRepository {
  Future<Album> deleteAlbum(int id);
}
