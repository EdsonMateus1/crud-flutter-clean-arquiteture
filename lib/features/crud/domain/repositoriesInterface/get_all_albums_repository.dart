import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';

abstract class IGetAllAlbumRepository {
  Future<List<Album>> getAlbums();
}
