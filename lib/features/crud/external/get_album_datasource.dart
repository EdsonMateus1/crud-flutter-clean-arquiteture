import 'package:clean_arquiteture/core/error/exception.dart';
import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/data/models/remote_album.dart';
import 'package:clean_arquiteture/features/crud/external/api/base_api.dart';
import 'package:http/http.dart' as http;

class AlbumRemoteGetDataSource implements IRemoteGetAlbumDataSource {
  @override
  Future<AlbumModel> getAlbum(int id) async {
    try {
      final res = await http.get("${BaseApi.BASE_URL}/albums/$id");
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
