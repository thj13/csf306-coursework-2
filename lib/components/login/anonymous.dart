import 'package:coursework_2/services/auth.dart';
import 'package:flutter/material.dart';

class Anonymous extends StatefulWidget {
  const Anonymous({Key? key}) : super(key: key);

  @override
  _AnonymousState createState() => _AnonymousState();
}  final String _buttonText = 'Continue as guest';
//final AuthService _authService = AuthService();

@override
Widget build(BuildContext context) {
  return TextButton(
    onPressed: () async {
      // var result = await _authService.signInAnon();
      // if(result != null){
      //   print('Signed in');
      // }else{
      //   print('Error signing in anon');
      // }
    },
    child: Text(_buttonText),
  );
}


class _AnonymousState extends State<Anonymous> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}
