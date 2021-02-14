import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';

abstract class IGetAlbumRepository {
  Future<Album> getAlbum(int id);
}
