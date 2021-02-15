import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/delete_album_repository.dart';
import 'package:flutter/foundation.dart';

class DeleteAlbumRepository implements IDeleteAlbumRepository {
  final IRemoteDeleteAlbumDataSource deleteAlbumDataSource;
  DeleteAlbumRepository({@required this.deleteAlbumDataSource});
  @override
  Future<Album> deleteAlbum(int id) async {
    return await deleteAlbumDataSource.deleteAlbum(id);
  }
}
