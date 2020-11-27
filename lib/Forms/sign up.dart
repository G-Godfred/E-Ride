import 'package:Eride/Constants/forms.dart';
import 'package:Eride/Forms/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
          backgroundColor: Colors.white,
          actions: [
            RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
                icon: Icon(Icons.book_online),
                label: Text('Log in'))
          ],
        ),
        body: Formfill());
  }
}
