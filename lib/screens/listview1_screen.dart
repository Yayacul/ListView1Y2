import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  var games = ["pou", "fornite", "mortal kombat", "pacman"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview tipo 1'),
        ),
        body: ListView(
          children: [
            ...games
                .map((games) => ListTile(
                      title: Text(games),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.deepPurpleAccent[100]),
                      onTap: () {
                        var seleccion = games;
                        print(seleccion);
                      },
                    ))
                .toList(),
          ],
        ));
  }
}
