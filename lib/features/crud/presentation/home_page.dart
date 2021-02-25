import 'package:clean_arquiteture/features/crud/domain/entities/album.dart';
import 'package:clean_arquiteture/features/crud/domain/usecases/get_all_albums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  final IGetAllAlbums userCase = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: FutureBuilder(
        future: userCase(),
        builder: (context, AsyncSnapshot<List<Album>> snapshot) {
          if (snapshot.hasError) {
            return Text("alguma coisa deu errado");
          } else if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return Text("${snapshot.data[index].title}");
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await userCase();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
