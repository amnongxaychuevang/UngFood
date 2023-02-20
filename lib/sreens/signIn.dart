import 'package:flutter/material.dart';

import '../utility/my_style.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyStyle().dartColor,
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: [Colors.white, MyStyle().primaryColor],
          radius: 1.0,
          center: const Alignment(0, -0.3),
        )),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MyStyle().showLogo(),
                MyStyle().mysizedBox(),
                MyStyle().showTitle('Ung Food'),
                MyStyle().mysizedBox(),
                userForm(),
                MyStyle().mysizedBox(),
                passwordForm(),
                MyStyle().mysizedBox(),
                loginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton() => SizedBox(
      width: 250.0,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: MyStyle().dartColor),
        child: const Text('Login'),
      ));

  Widget userForm() => SizedBox(
        width: 250.0,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_box,
              color: MyStyle().dartColor,
            ),
            labelText: 'User:',
            labelStyle: TextStyle(color: MyStyle().dartColor),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().dartColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().primaryColor)),
          ),
        ),
      );
  Widget passwordForm() => SizedBox(
        width: 250.0,
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: MyStyle().dartColor,
            ),
            labelText: 'Password:',
            labelStyle: TextStyle(color: MyStyle().dartColor),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().dartColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().primaryColor)),
          ),
        ),
      );
}
