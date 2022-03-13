import 'package:flutter/material.dart';

class Pose {

  final String _name;
  final String _process;
  final String _breathing;
  final String _precaution;
  final String _benefits;
  final Image _image;

  Pose(this._name, this._process, this._breathing, this._precaution, this._benefits, this._image);

  String get name => _name;
  String get process => _process;
  String get breathing => _breathing;
  String get precaution => _precaution;
  String get benefits => _benefits;
  Image get image => _image;

}