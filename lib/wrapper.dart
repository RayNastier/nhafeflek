// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:nhafeflek/authentication/sign_in.dart';
import 'package:provider/provider.dart';
import 'mainView.dart';
import 'models/user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Userr?>(context);
    if (user?.uid == null) {
      return const SignInPage();
    } else {
      print(user?.uid);
      return const MainView();
    }
  }
}
