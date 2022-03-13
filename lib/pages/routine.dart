import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../configuration.dart';
import '../models/pose.dart';

class Routine extends StatelessWidget {
  const Routine({Key? key}) : super(key: key);



  // final Consumer<Configuration> test;

  final bool visible = true;

  @override
  Widget build(BuildContext context) {

    Configuration config = context.watch<Configuration>();
    Pose? pose = config.getCurrentPose();

    // Configuration config = widget.config;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pose"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // TODO: make this component scalable to screen size
            // TODO: replace hard coded image link
            Expanded(
                child: Image.asset('assets/images/Pranamasana.png'),
              // child: Image(image: pose?.image),
            ),
            Visibility(
                child: Consumer<Configuration>(
                  builder: (context, config, child) => Text(config.getStage().toString()),
                ),
                visible: visible,
            ),
            Container(
              child: Text(pose?.name ?? 'N/A')
            ),
            // TODO: add descriptions etc
            // TODO: get buttons to work from state
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      // _poseSequence--;
                      // print(_poseSequence);
                      var configuration = context.read<Configuration>();
                      configuration.previousStage();
                    },
                    child: const Text("Go back")
                ),
                ElevatedButton(
                    onPressed: () async{
                      //var configuration = Provider.of<Configuration>(context);
                      // var config = context.read<Configuration>();
                      //widget.config.nextStage();
                      // configuration.decodeDataAsync();
                      // print(config.jsonDecodedPoses);
                    },
                    child: const Text("Go next")
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
