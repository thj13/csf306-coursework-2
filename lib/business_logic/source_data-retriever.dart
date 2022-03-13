import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/pose.dart';
import 'dart:async';

class SourceDataRetriever{

  final Map<int,String> _poseStageToNameMap = {
    1 : 'Prayer pose',
    2 : 'Raised arms pose',
    3 : 'Standing forward bend',
    4 : 'Equestrian pose',
    5 : 'Staff pose',
    6 : 'Eight limbed pose',
    7 : 'Cobra pose',
    8 : 'Mountain Pose (Parvatasana)',
    9 : 'Equestrian pose',
    10 : 'Standing forward bend',
    11 : 'Raised arms pose',
    12 : 'Prayer pose'
  };

  final Map<String,Image> _poseNameToImageAssetMap = {
    'Prayer pose' : Image.asset('assets/images/Pranamasana.png'),
    'Raised arms pose' : Image.asset('assets/images/Pranamasana.png'),
    'Standing forward bend' : Image.asset('assets/images/Pranamasana.png'),
    'Equestrian pose' : Image.asset('assets/images/Pranamasana.png'),
    'Staff pose' : Image.asset('assets/images/Pranamasana.png'),
    'Eight limbed pose' : Image.asset('assets/images/Pranamasana.png'),
    'Cobra pose' : Image.asset('assets/images/Pranamasana.png'),
    'Mountain Pose (Parvatasana)' : Image.asset('assets/images/Pranamasana.png')
  };

  Future<Map<int,Pose>> getStageToPoseMapAsync() async {

    Map<int,Pose> stageToPoseMap = {};

    var data = await rootBundle.loadString("content/poses.json");
    List<dynamic> decoded = json.decode(data);

    print('TEST: ' +decoded.toString());

    for(int i = 0; i < decoded.length; i++) {
      print('Something');
        // String stageName = _poseStageToNameMap[0] as String;//_poseStageToNameMap[i] as String;
        // print('Stage name: ' +stageName);
        // Image stageImage = _poseNameToImageAssetMap['Prayer pose'] as Image;//_poseNameToImageAssetMap[stageName] as Image;
        //
        // print('Stage name: ' +stageName);
        // print(stageImage);

        dynamic tempObject = decoded[i];
        print(tempObject);

        Pose poseToAdd = Pose(
            tempObject['name'] ?? 'N/A',
            tempObject['process'] ?? 'N/A',
            tempObject['breathing'] ?? 'N/A',
            tempObject['precaution'] ?? 'N/A',
            tempObject['benefits'] ?? 'N/A',
            _poseNameToImageAssetMap['Prayer pose'] as Image//stageImage
        );

        print(poseToAdd);

        stageToPoseMap[i] = poseToAdd;
      // }
    }

    print(stageToPoseMap);

    return stageToPoseMap;
  }

  // Future<List> _decodeDataAsync() async {
  //   var data = await rootBundle.loadString("content/poses.json");
  //   //print(data);
  //   List<dynamic> decoded = json.decode(data);
  //   //print(decoded);
  //   return decoded as Future<List>;
  // }



}