import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'business_logic/source_data-retriever.dart';
import 'models/pose.dart';

class Configuration extends ChangeNotifier{
  SourceDataRetriever dataRetriever = SourceDataRetriever();
  int _poseSequenceStage = 1;
  bool breathingQueues = true;
  bool processQueues = true;
  bool precautionQueues = true;
  bool benefitQueues = false;
  // late var jsonDecodedPoses = _decodeDataAsync();//test as List;
  Map<int,Pose>? stageToPoseMap = {}; //= await dataRetriever.getStageToPoseMapAsync(); //dataRetriever.getStageToPoseMapAsync() as Map<int,Pose>;
  // late var stageToPoseMap  = () => {dataRetriever.getStageToPoseMapAsync() as Map<int,Pose>} //dataRetriever.getStageToPoseMapAsync() as Map<int,Pose>;

  // Future<List> _decodeDataAsync() async {
  //   var data = await rootBundle.loadString("content/poses.json");
  //   //print(data);
  //   List<dynamic> decoded = json.decode(data);
  //   //print(decoded);
  //   return decoded as Future<List>;
  // }

  void setThings() async{
    stageToPoseMap = await dataRetriever.getStageToPoseMapAsync();
  }

  Configuration(){
    print("TEST ME NOW PLS");
    // stageToPoseMap = dataRetriever.getStageToPoseMapAsync() as Map<int,Pose>;
    // print(jsonDecodedPoses);
    setThings();
    print(stageToPoseMap);


  }

  Pose? getCurrentPose() {
    int test = _poseSequenceStage;
    return stageToPoseMap![test];
  }

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
