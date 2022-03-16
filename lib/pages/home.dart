import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../configuration.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final String prompt = 'Choose a routine';
  final String routineOne = 'Hatha Surya Namaskar';
  final String routineTwo = 'Sivananda Sun Salutation';
  final String routineThree = 'Ashtanga Surya Namaskar - A';
  final String routineFour = 'Ashtanga Surya Namaskar - B';
  final String routineFive = 'Iyengar Surya Namaskar';

  @override
  Widget build(BuildContext context) {

    Configuration config = context.watch<Configuration>();

    return Scaffold(
      appBar: AppBar(
        title: Text(prompt),
        leading: const Icon(Icons.menu),
      ),
      body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                child: Text(routineOne),
                onPressed: () {
                  config.getBasicRotation();
                  Navigator.pushNamed(context, '/preferences');
                },
              ),
              ElevatedButton(
                child: Text(routineTwo),
                onPressed: () {
                  config.getBasicRotation();
                  Navigator.pushNamed(context, '/preferences');
                },
              ),
              ElevatedButton(
                child: Text(routineThree),
                onPressed: () {
                  config.getAshtangaSuryaNamaskarA();
                  Navigator.pushNamed(context, '/preferences');
                },
              ),
              ElevatedButton(
                child: Text('Contact us'),
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
              ),

              // ElevatedButton(
              //   child: Text(routineFour),
              //   onPressed: () {
              //     Navigator.pushNamed(context, '/preferences');
              //   },
              // ),
              // ElevatedButton(
              //   child: Text(routineFive),
              //   onPressed: () {
              //     Navigator.pushNamed(context, '/preferences');
              //   },
              // ),
            ],
          )
      ),
    );
  }
}


// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//         leading: const Icon(Icons.menu),
//       ),
//       body: SafeArea(
//           child: Column(
//             children: [
//               Column(
//
//               ),
//             ],
//           )
//       ),
//     );
//   }
// }

