import 'package:clean_arquiteture/core/error/exception.dart';
import 'package:clean_arquiteture/features/features/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/features/data/models/remote_album.dart';
import 'package:http/http.dart' as http;

class AlbumRemoteGetDataSource implements IAlbumRemoteGetAlbumsDataSource {
  @override
  Future<AlbumModel> getAbum(int id) async {
    try {
      final res =
          await http.get("https://jsonplaceholder.typicode.com/albums/$id");
      if (res.statusCode == 200) {
        return AlbumModel.fromJson(res.body);
      } else {
        throw ServeException(
            "get album Exception status code ${res.statusCode}");
      }
    } catch (e) {
      throw ServeException("get album Exception error $e");
    }
  }
}
