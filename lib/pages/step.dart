import 'package:flutter/material.dart';

class Step extends StatelessWidget {
  const Step({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              child: Image.asset('/images/Prayer Pose.png')
            ),
            // TODO: add descriptions etc
            // TODO: put these buttons onto same row
            // TODO: get buttons to work from state
            ElevatedButton(
                onPressed: () {
                  // _poseSequence--;
                  // print(_poseSequence);
                },
                child: const Text("Go back")
            ),
            ElevatedButton(
                onPressed: () {
                  // _poseSequence++;
                  // print(_poseSequence);
                },
                child: const Text("Go next")
            ),
          ],
        ),
      ),
    );
  }

}