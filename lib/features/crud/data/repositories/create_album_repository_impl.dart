import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/create_album_repository.dart';

class CreateAlbumRepository implements ICreateAlbumrepository {
  final IRemoteCreateAlbumsDataSource createAlbumDataSource;
  CreateAlbumRepository(this.createAlbumDataSource);
  @override
  Future<Album> createAlbums(Album album) async {
    return await createAlbumDataSource.createAlbum(album);
  }
}
