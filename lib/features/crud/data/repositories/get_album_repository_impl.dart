import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/get_album_repository.dart';

class GetAlbumRepository implements IGetAlbumRepository {
  final IRemoteGetAlbumDataSource getAlbumDataSource;
  GetAlbumRepository(this.getAlbumDataSource);
  @override
  Future<Album> getAlbum(int id) async {
    return await getAlbumDataSource.getAlbum(id);
  }
}
