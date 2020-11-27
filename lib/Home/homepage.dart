import 'package:Eride/services/auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'E-RIDE',
          style: TextStyle(color: Colors.lightBlue[400]),
        ),
        backgroundColor: Colors.white,
        actions: [
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.keyboard_return),
              label: Text('LogOut'))
        ],
      ),
      body: Container(),
    );
  }
}
