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
              child: Image.network("https://i0.wp.com/fitsri.com/wp-content/uploads/2020/12/Pranamasana-1024x683.jpg?resize=680%2C454")
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