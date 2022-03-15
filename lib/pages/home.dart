import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final String prompt = 'Please select a routine to begin:';
  final String routineOne = 'Hatha Surya Namaskar';
  final String routineTwo = 'Sivananda Sun Salutation';
  final String routineThree = 'Ashtanga Surya Namaskar - A';
  final String routineFour = 'Ashtanga Surya Namaskar - B';
  final String routineFive = 'Iyengar Surya Namaskar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: const Icon(Icons.menu),
      ),
      body: SafeArea(
          child: Column(
            children: [
              Text(prompt),
              ElevatedButton(
                child: Text(routineOne),
                onPressed: () {
                  Navigator.pushNamed(context, '/preferences');
                },
              ),
              ElevatedButton(
                child: Text(routineTwo),
                onPressed: () {
                  Navigator.pushNamed(context, '/preferences');
                },
              ),
              ElevatedButton(
                child: Text(routineThree),
                onPressed: () {
                  Navigator.pushNamed(context, '/preferences');
                },
              ),
              ElevatedButton(
                child: Text(routineFour),
                onPressed: () {
                  Navigator.pushNamed(context, '/preferences');
                },
              ),
              ElevatedButton(
                child: Text(routineFive),
                onPressed: () {
                  Navigator.pushNamed(context, '/preferences');
                },
              ),
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

