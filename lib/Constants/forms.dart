import 'package:Eride/Constants/deco.dart';
import 'package:Eride/Home/homepage.dart';
import 'package:flutter/material.dart';

class Formfill extends StatefulWidget {
  @override
  _FormfillState createState() => _FormfillState();
}

class _FormfillState extends State<Formfill> {
  String email = '';
  String password = '';
  String username = '';
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          TextFormField(
            //controller: mycontroller,
            decoration: textInputDecoration.copyWith(hintText: 'Username'),
            onChanged: (val) {
              setState(() => val = username);
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            //controller: mycontroller,
            decoration: textInputDecoration.copyWith(hintText: 'Email'),
            onChanged: (val) {
              setState(() => val = email);
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Password'),
            validator: (val) => val.length < 6 ? 'Characters must be 6+' : null,
            obscureText: true,
            //controller: mycontroller,
            onChanged: (val) {
              setState(() => val = password);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                RaisedButton(
                  child: Text('Sign Up'),
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
        ],
      ),
    ));
  }
}
