import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';

abstract class IGetAllAlbumsRepository {
  Future<List<Album>> getAlbums();
}
