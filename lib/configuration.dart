import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'business_logic/source_data-retriever.dart';
import 'models/pose.dart';

class Configuration extends ChangeNotifier{
  SourceDataRetriever dataRetriever = SourceDataRetriever();
  int _poseSequenceStage = 1;
  bool _breathingQueues = false;
  bool _processQueues = false;
  bool _precautionQueues = false;
  bool _benefitQueues = false;
  bool _allQueues = false;
  // late var jsonDecodedPoses = _decodeDataAsync();//test as List;
  Map<int,Pose>? stageToPoseMap = {}; //= await dataRetriever.getStageToPoseMapAsync(); //dataRetriever.getStageToPoseMapAsync() as Map<int,Pose>;
  // late var stageToPoseMap  = () => {dataRetriever.getStageToPoseMapAsync() as Map<int,Pose>} //dataRetriever.getStageToPoseMapAsync() as Map<int,Pose>;

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


  int get poseSequenceStage => _poseSequenceStage;

  set poseSequenceStage(int value) {
    _poseSequenceStage = value;
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

  bool get breathingQueues => _breathingQueues;
  bool get processQueues => _processQueues;
  bool get precautionQueues => _precautionQueues;
  bool get benefitQueues => _benefitQueues;
  bool get allQueues => _allQueues;

  void changeAllQueueStates(bool value){
    _allQueues = value;
    _breathingQueues = _allQueues;
    _processQueues = _allQueues;
    _precautionQueues = _allQueues;
    _benefitQueues = _allQueues;
    notifyListeners();
  }

  void changeProcessPreferenceState(bool value){
    _processQueues = value;
    notifyListeners();
  }
  void changeBreathingPreferenceState(bool value){
    _breathingQueues = value;
    notifyListeners();
  }
  void changePrecautionPreferenceState(bool value){
    _precautionQueues = value;
    notifyListeners();
  }

  void changeBenefitPreferenceState(bool value){
    _benefitQueues = value;
    notifyListeners();
  }

}
