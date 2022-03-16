import 'package:courseworkv3/pages/medical_warning.dart';
import 'package:flutter/material.dart';
import 'package:courseworkv3/pages/home.dart';
import 'package:courseworkv3/pages/loading.dart';
import 'package:courseworkv3/pages/about.dart';
import 'package:courseworkv3/pages/contact.dart';
import 'package:courseworkv3/pages/login.dart';
import 'package:courseworkv3/pages/routine.dart';
import 'package:provider/provider.dart';

import 'components/routine_preferences.dart';
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
      initialRoute: config.firstStart == true ? '/warning' : '/home',
      routes: {
        // '/' : (context) => const Loading(),
        '/home' : (context) => const Home(),
        '/about' : (context) => const About(),
        '/contact' : (context) => const Contact(),
        '/warning' : (context) => const MedicalWarning(),
        '/routine' : (context) => const Routine(),
        '/preferences' : (context) => const RoutinePreferences(),
      },
    );
  }
}
