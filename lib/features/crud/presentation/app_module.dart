import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/data/repositories/create_album_repository_impl.dart';
import 'package:clean_arquiteture/features/crud/data/repositories/get_album_repository_impl.dart';
import 'package:clean_arquiteture/features/crud/data/repositories/get_all_albums_repository_impl.dart';
import 'package:clean_arquiteture/features/crud/data/repositories/updade_album_repository_impl.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/create_album_repository.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/get_album_repository.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/get_all_albums_repository.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/updade_album_repository.dart';
import 'package:clean_arquiteture/features/crud/domain/usecases/create_album.dart';
import 'package:clean_arquiteture/features/crud/domain/usecases/get_album.dart';
import 'package:clean_arquiteture/features/crud/domain/usecases/get_all_albums.dart';
import 'package:clean_arquiteture/features/crud/domain/usecases/updade_album.dart';
import 'package:clean_arquiteture/features/crud/external/create_album_datasource.dart';
import 'package:clean_arquiteture/features/crud/external/get_album_datasource.dart';
import 'package:clean_arquiteture/features/crud/external/get_all_album_datasource.dart';
import 'package:clean_arquiteture/features/crud/external/updade_album_datasource.dart';
import 'package:clean_arquiteture/features/crud/presentation/app_widget.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        // get albums
        Bind<IGetAllAlbums>(
          (inject) => GetAllAlbums(
            repository: inject<IGetAllAlbumsRepository>(),
          ),
        ),
        Bind<IGetAllAlbumsRepository>(
          (inject) => GetAllAlbumsRepository(
            getAlbumsDataSource: inject<IRemoteGetAllAlbumsDataSource>(),
          ),
        ),
        Bind<IRemoteGetAllAlbumsDataSource>(
          (inject) => AlbumRemoteGetAllDataSource(),
        ),
        // get album
        Bind<IGetAlbum>(
          (inject) => GetAlbum(
            repository: inject<IGetAlbumRepository>(),
          ),
        ),
        Bind<IGetAlbumRepository>(
          (inject) => GetAlbumRepository(
            getAlbumDataSource: inject<IRemoteGetAlbumDataSource>(),
          ),
        ),
        Bind<IRemoteGetAlbumDataSource>(
          (inject) => AlbumRemoteGetDataSource(),
        ),
        // create album
        Bind<ICreateAlbum>(
          (inject) => CreateAlbum(
            repository: inject<ICreateAlbumrepository>(),
          ),
        ),
        Bind<ICreateAlbumrepository>(
          (inject) => CreateAlbumRepository(
            createAlbumDataSource: inject<IRemoteCreateAlbumDataSource>(),
          ),
        ),
        Bind<IRemoteCreateAlbumDataSource>(
          (inject) => AlbumRemoteCreateDataSource(),
        ),
        // updade album
        Bind<IUpdadeAlbum>(
          (inject) => UpdadeAlbum(
            repository: inject<IUpdadeAlbumRepository>(),
          ),
        ),
        Bind<IUpdadeAlbumRepository>(
          (inject) => UpdadeAlbumRepository(
            updadeAlbumsDataSource: inject<IRemoteUpdadeAlbumDataSource>(),
          ),
        ),
        Bind<IRemoteUpdadeAlbumDataSource>(
          (inject) => AlbumRemoteUpdadeDataSource(),
        )
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [];
}
