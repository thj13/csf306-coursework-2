import 'package:flutter/material.dart';

class ExitRoutine extends StatelessWidget {
  const ExitRoutine({Key? key}) : super(key: key);
  
  final String _exitButtonText = 'Exit';
  final String _cancelButtonText = 'Cancel';

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          TextButton(
              child: Text(_cancelButtonText),
              onPressed: () {
                Navigator.pop(context);
              }
          ),
          ElevatedButton(
            child: Text(_exitButtonText),
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/home'));
            },
          )
        ]
    );
  }
}
