import 'package:flutter/material.dart';
import 'package:coursework_2/pages/home.dart';
import 'package:coursework_2/pages/loading.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coursework 2',
      theme: ThemeData(),
      initialRoute: '/home',
      routes: {
        '/' : (context) => const Loading(),
        '/home' : (context) => const Home(),
      },
    );
  }
}
