import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:provider/provider.dart';
import '../configuration.dart';
import '../models/pose.dart';
import 'exit_routine.dart';

class Routine extends StatelessWidget {
  const Routine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Configuration config = context.watch<Configuration>();
    Pose? pose = config.getCurrentPose();

    // Configuration config = widget.config;

    Widget informationDisplay(String title, String information, bool visible){
      return Visibility(
          child: Column(
              children: [
                Text(title+': ' + information)
              ]
          ),
          visible: visible,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(pose?.name ?? 'Poses'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: PhotoView(
                    imageProvider: AssetImage(pose?.image ?? 'N/A'),
                ),
              // child: Image(image: pose?.image),
            ),
            informationDisplay('Process', pose?.process ?? 'N/A', config.processQueues),
            informationDisplay('Breathing', pose?.breathing ?? 'N/A', config.breathingQueues),
            informationDisplay('Precaution', pose?.precaution ?? 'N/A', config.precautionQueues),
            informationDisplay('Benefits', pose?.benefits ?? 'N/A', config.benefitQueues),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      config.previousStage();
                    },
                    child: const Text("Previous Pose")
                ),
                ElevatedButton(
                    onPressed: () async{
                      config.nextStage();
                    },
                    child: const Text("Next Pose")
                ),
                ElevatedButton(
                    child: Text('Exit'),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text('1'),
                              content: ExitRoutine()
                          )
                      );

                    }
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
