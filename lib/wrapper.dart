import 'package:Eride/Forms/sign%20up.dart';
import 'package:Eride/Home/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null) {
      return SignUp();
    } else {
      return Homepage();
    }
  }
}
