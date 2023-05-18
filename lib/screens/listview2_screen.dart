import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var games = ["pou", "fornite", "mortal kombat", "pacman"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview tipo 2'),
        ),
        body: ListView.separated(
          itemCount: games.length,
          itemBuilder: (context, index) => ListTile(
            //asignamos el titulo a partir de mi lista
            title: Text(games[index]),
            //asignamos el icono a cada elemento
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.green[200]),
            onTap: () {
              var seleccion = games[index];
              print(seleccion);
            },
          ),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
