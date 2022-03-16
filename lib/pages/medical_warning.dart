import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../configuration.dart';

class MedicalWarning extends StatelessWidget {
  const MedicalWarning({Key? key}) : super(key: key);

  final String _disclaimer = '';
  final String _content = 'Please seek medical advise before using this app';
  final String _buttonText = 'Ok';


  @override
  Widget build(BuildContext context) {

    Configuration config = context.watch<Configuration>();

    return AlertDialog(
      title: Text(_disclaimer),
      content: Column(
        children: [
          Text(_content),
          ElevatedButton(
              child: Text(_buttonText),
              onPressed: () {
                config.setFirstStartToFalse();
                Navigator.pushNamed(context, '/home');
              }
          )
        ],
      ),
    );
  }
}
