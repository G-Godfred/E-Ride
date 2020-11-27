import 'package:Eride/Constants/deco.dart';
import 'package:Eride/Home/homepage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Form(
            child: Column(children: [
          Padding(padding: EdgeInsets.all(10)),
          TextFormField(
            //controller: mycontroller,
            decoration: textInputDecoration.copyWith(hintText: 'Email'),
            onChanged: (val) {
              setState(() => val = email);
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            //controller: mycontroller,
            decoration: textInputDecoration.copyWith(hintText: 'Password'),
            validator: (val) => val.length < 6 ? 'Characters must be 6+' : null,
            onChanged: (val) {
              setState(() => val = password);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                RaisedButton(
                  child: Text('Log In'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
              ],
            ),
          )
        ])),
      ),
    );
  }
}
