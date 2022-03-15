import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Tom Jefford'),
        Text('1916432'),
        Text('Credits'),
      ],
    );
  }
}

