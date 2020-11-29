import 'package:flutter/material.dart';
import 'package:flutterxfirebase/screens/authenticate/authenticate.dart';
import 'package:flutterxfirebase/screens/home/Home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return either Home or Authenticate
    return Authenticate();
  }
}
