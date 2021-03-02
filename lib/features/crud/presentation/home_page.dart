import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/usecases/get_album.dart';
import 'package:clean_arquiteture/features/crud/domain/usecases/get_all_albums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  final IGetAllAlbums _getAllAlbums = Modular.get<IGetAllAlbums>();
  final IGetAlbum _getAlbum = Modular.get<IGetAlbum>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: FutureBuilder(
        future: _getAlbum(1),
        builder: (context, AsyncSnapshot<Album> snapshot) {
          if (snapshot.hasError) {
            return Text("alguma coisa deu errado");
          } else if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return Text("${snapshot.data.title}");
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _getAllAlbums();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
