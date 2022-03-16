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
    'Pranamasana (Prayer pose)' : Image.asset('assets/images/Prayer Pose.png'),
    'Hasta Utthanasana (Raised arms pose)' : Image.asset('assets/images/Prayer Pose.png'),
    'Padahastasana (Standing forward bend)' : Image.asset('assets/images/Prayer Pose.png'),
    'Ashwa Sanchalanasana (Equestrian pose)' : Image.asset('assets/images/Prayer Pose.png'),
    'Chaturanga Dandasana (Four-limb pose)' : Image.asset('assets/images/Prayer Pose.png'),
    'Ashtanga Namaskar (Eight Limbed pose)' : Image.asset('assets/images/Prayer Pose.png'),
    'Bhujangasana (Cobra pose)' : Image.asset('assets/images/Prayer Pose.png'),
    'Adho Mukha Svanasana (Downward Facing Dog)' : Image.asset('assets/images/Prayer Pose.png')
  };

  Map<int,Pose> _stageToPoseMap = {};

  Future<Map<int,Pose>> getStageToPoseMapAsync() async {

    Map<int,Pose> stageToPoseMap = {};

    var data = await rootBundle.loadString("content/basic.json");
    List<dynamic> decoded = json.decode(data);

    print('TEST: ' +decoded.toString());

    for(int i = 0; i < decoded.length; i++) {

        String stageName = _poseStageToNameMap[i+1] as String;
        print('Stage name: ' +stageName);
        // Image stageImage = _poseNameToImageAssetMap['Prayer pose'] as Image;//Switch to stageName

        print('Stage name: ' +stageName);
        // print(stageImage);

        dynamic tempObject = decoded[i];
        print(tempObject);

        Image tempImage = Image.asset('assets/images/' + tempObject['image']  +'.png');

        Pose poseToAdd = Pose(
            tempObject['name'] ?? 'N/A',
            tempObject['process'] ?? 'N/A',
            tempObject['breathing'] ?? 'N/A',
            tempObject['precaution'] ?? 'N/A',
            tempObject['benefits'] ?? 'N/A',
            tempObject['image'] ?? 'N/A'
            //_poseNameToImageAssetMap['Pranamasana (Prayer pose)'] as Image//stageImage
        );

        print(poseToAdd);

        stageToPoseMap[i+1] = poseToAdd;
      // }
    }

    print('MAP: ' +stageToPoseMap.toString());

    return stageToPoseMap;
  }

  // Future<List> _decodeDataAsync() async {
  //   var data = await rootBundle.loadString("content/basic.json");
  //   //print(data);
  //   List<dynamic> decoded = json.decode(data);
  //   //print(decoded);
  //   return decoded as Future<List>;
  // }

  Future<Map<int,Pose>> getHathaSuryaNamaskar() async{
    return _stageToPoseMap;
  }

  Future<Map<int,Pose>> getSivanandaSunSalutation() async{
    return _stageToPoseMap;
  }

  Future<Map<int,Pose>> getAshtangaSuryaNamaskarA() async{
    Map<int,Pose> stageToPoseMap = {};

    var data = await rootBundle.loadString("content/SuryaNamaskarA.json");
    List<dynamic> decoded = json.decode(data);

    print('TEST: ' +decoded.toString());

    for(int i = 0; i < decoded.length; i++) {

      String stageName = _poseStageToNameMap[i+1] as String;
      print('Stage name: ' +stageName);
      // Image stageImage = _poseNameToImageAssetMap['Prayer pose'] as Image;//Switch to stageName

      print('Stage name: ' +stageName);
      // print(stageImage);

      dynamic tempObject = decoded[i];
      print(tempObject);

      Image tempImage = Image.asset('assets/images/' + tempObject['image']  +'.png');

      Pose poseToAdd = Pose(
          tempObject['name'] ?? 'N/A',
          tempObject['process'] ?? 'N/A',
          tempObject['breathing'] ?? 'N/A',
          tempObject['precaution'] ?? 'N/A',
          tempObject['benefits'] ?? 'N/A',
          tempObject['image'] ?? 'N/A'
        //_poseNameToImageAssetMap['Pranamasana (Prayer pose)'] as Image//stageImage
      );

      print(poseToAdd);

      _stageToPoseMap[i+1] = poseToAdd;
      // }
    }

    print('MAP: ' +_stageToPoseMap.toString());

    return _stageToPoseMap;
  }

  Future<Map<int,Pose>> getAshtangaSuryaNamaskarB() async{
    return _stageToPoseMap;
  }

  Future<Map<int,Pose>> getIyengarSuryaNamaskar() async{
    return _stageToPoseMap;
  }




}