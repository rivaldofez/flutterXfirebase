import 'package:flutter/material.dart';
import 'package:flutterxfirebase/screens/authenticate/authenticate.dart';
import 'package:flutterxfirebase/screens/home/Home.dart';
import 'package:provider/provider.dart';
import 'package:flutterxfirebase/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    //return either Home or Authenticate
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
