import 'package:flutter/material.dart';
import 'package:flutterxfirebase/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Health Setter Health'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15.0),
        child: RaisedButton(
          child: Text('Sign in anonymously'),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print('error signin in');
            } else {
              print('signed in');
              print(result);
            }
          },
        ),
      ),
    );
  }
}
