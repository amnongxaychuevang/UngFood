// ignore_for_file: unused_local_variable

import 'package:app/sreens/signIn.dart';
import 'package:app/sreens/signUp.dart';
import 'package:app/utility/my_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyStyle().dartColor,
      ),
      drawer: showDrawer(),
    );
  }

  Drawer showDrawer() => Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Guest'),
              accountEmail: Text('Please login'),
            ),
            signInMenu(),
            signUpMenu(),
          ],
        ),
      );

  ListTile signInMenu() {
    return ListTile(
        leading: const Icon(Icons.android_outlined),
        title: const Text('Sign In'),
        onTap: () {
          Navigator.pop(context);
          MaterialPageRoute route =
              MaterialPageRoute(builder: (value) => const SignIn());
          Navigator.push(context, route);
        });
  }

  ListTile signUpMenu() {
    return ListTile(
        leading: const Icon(Icons.android),
        title: const Text('Sign Up'),
        onTap: () {
          Navigator.pop(context);
          MaterialPageRoute route =
              MaterialPageRoute(builder: (value) => const SignUp());
          Navigator.push(context, route);
        });
  }
}
