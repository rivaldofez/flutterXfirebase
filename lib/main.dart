import 'package:flutter/material.dart';
import 'package:flutterxfirebase/screens/wrapper.dart';
import 'package:flutterxfirebase/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:flutterxfirebase/models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
      catchError: (_, __) => null,
    );
  }
}
