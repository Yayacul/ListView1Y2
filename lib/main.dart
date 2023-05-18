import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //quitamos debug
      debugShowCheckedModeBanner: false,
      initialRoute: "/listview1",
      routes: {
        "/listview1": (BuildContext context) => ListView1(),
        "/listview2": (BuildContext context) => ListView2(),
      },
      theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.blue,
          //configurar texto
          textTheme: TextTheme(
              bodyText2: TextStyle(color: Colors.pink, fontSize: 20))),
      //pagina inicial
    );
  }
}
