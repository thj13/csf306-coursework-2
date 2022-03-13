import 'package:flutter/material.dart';
import 'package:coursework_2/pages/home.dart';
import 'package:coursework_2/pages/loading.dart';
import 'package:coursework_2/pages/about.dart';
import 'package:coursework_2/pages/contact.dart';
import 'package:coursework_2/pages/login.dart';
import 'package:coursework_2/pages/routine.dart';
import 'package:provider/provider.dart';

import 'configuration.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

//   @override
//   _ApplicationState createState() => _ApplicationState();
// }

// class _ApplicationState extends State<Application> {

  @override
  Widget build(BuildContext context) {

    Configuration config = context.watch<Configuration>();

    return MaterialApp(
      title: 'Coursework 2',
      theme: ThemeData(),
      initialRoute: '/home',
      routes: {
        '/' : (context) => const Loading(),
        '/home' : (context) => const Home(),
        '/about' : (context) => const About(),
        '/contact' : (context) => const Contact(),
        '/login' : (context) => const Login(),
        '/routine' : (context) => const Routine(),
      },
    );
  }
}
