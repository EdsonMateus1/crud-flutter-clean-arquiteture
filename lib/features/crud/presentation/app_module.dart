import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/data/repositories/get_all_albums_repository_impl.dart';
import 'package:clean_arquiteture/features/crud/domain/repositoriesInterface/get_all_albums_repository.dart';
import 'package:clean_arquiteture/features/crud/domain/usecases/get_all_albums.dart';
import 'package:clean_arquiteture/features/crud/external/get_all_album_datasource.dart';
import 'package:clean_arquiteture/features/crud/presentation/app_widget.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind<IGetAllAlbums>(
          (i) => GetAllAlbums(repository: i<IGetAllAlbumsRepository>()),
        ),
        Bind(
          (i) => GetAllAlbumsRepository(
            getAlbumsDataSource: i<IRemoteGetAllAlbumsDataSource>(),
          ),
        ),
        Bind((i) => AlbumRemoteGetAllDataSource())
      ];

  @override
  // TODO: implement bootstrap
  Widget get bootstrap => AppWidget();

  @override
  // TODO: implement routers
  List<ModularRouter> get routers => [];
}
