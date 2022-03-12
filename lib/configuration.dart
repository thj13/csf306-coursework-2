import 'package:flutter/material.dart';

class Configuration extends ChangeNotifier{
  int _poseSequenceStage = 0;

  int getStage(){
    return _poseSequenceStage;
  }

  void nextStage(){
    _poseSequenceStage++;
    notifyListeners();
  }

  void previousStage(){
    _poseSequenceStage--;
    notifyListeners();
  }

}

// class Configuration extends StatefulWidget {
//   const Configuration({Key? key}) : super(key: key);
//
//   @override
//   _ConfigurationState createState() => _ConfigurationState();
//
// }
//
// class _ConfigurationState extends State<Configuration> {
//
//   final posesDeserialised = List<Object>.filled(12, null);
//
//   @override
//   initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
