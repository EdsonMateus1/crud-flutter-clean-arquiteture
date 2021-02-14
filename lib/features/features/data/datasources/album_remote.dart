import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/features/domain/entities/album.dart';
import 'package:dartz/dartz.dart';

abstract class IAlbumRemoteCreateAlbumsDataSource {
  Future<Album> createAlbum(Album album);
}

abstract class IAlbumRemoteUpdadeAlbumsDataSource {
  Future<Album> updadeAlbum(Album album);
}

abstract class IAlbumRemoteGetAlbumsDataSource {
  Future<Album> getAbum(int id);
}
