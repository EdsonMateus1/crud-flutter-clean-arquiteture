import 'package:clean_arquiteture/core/error/failure.dart';
import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/get_all_albums_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllAlbumsRepository implements IGetAllAlbumRepository {
  final IRemoteGetAlbumsDataSource getAlbumsDataSource;
  GetAllAlbumsRepository(this.getAlbumsDataSource);
  @override
  Future<Either<Failure, List<Album>>> getAlbums() async {
    return Right(await getAlbumsDataSource.getAlbums());
  }
}
