import 'dart:convert';
import 'package:clean_arquiteture/core/error/exception.dart';
import 'package:clean_arquiteture/features/crud/data/datasources/album_remote.dart';
import 'package:clean_arquiteture/features/crud/data/models/remote_album.dart';
import 'package:clean_arquiteture/features/crud/external/api/base_api.dart';
import 'package:http/http.dart' as http;

class AlbumRemoteGetAllDataSource implements IRemoteGetAlbumsDataSource {
  @override
  Future<List<AlbumModel>> getAlbums() async {
    try {
      final res = await http.get("${BaseApi.BASE_URL}/albums");
      if (res.statusCode == 200) {
        final List data = jsonDecode(res.body);
        final List<AlbumModel> albums =
            data.map((album) => AlbumModel.fromMap(album)).toList();
        return albums;
      } else {
        throw ServeException(
            "get albums Exception status code ${res.statusCode}");
      }
    } catch (e) {
      throw ServeException("get albums Exception $e");
    }
  }
}
