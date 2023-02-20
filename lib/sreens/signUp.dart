import 'package:app/utility/my_style.dart';
import 'package:flutter/material.dart';

import '../utility/nomal_dialog.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? chooseType, name, user, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyStyle().dartColor,
        title: const Text('Sign Up'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        children: [
          myLogo(),
          MyStyle().mysizedBox(),
          showAppName(),
          MyStyle().mysizedBox(),
          nameForm(),
          MyStyle().mysizedBox(),
          userForm(),
          MyStyle().mysizedBox(),
          passwordForm(),
          MyStyle().mysizedBox(),
          MyStyle().showSubTitle('ຊະນິດຂອງຜູ້ໃຊ້:'),
          MyStyle().mysizedBox(),
          userRadio(),
          shopRadio(),
          riderRadio(),
          MyStyle().mysizedBox(),
          registerButton(),
        ],
      ),
    );
  }

  Widget registerButton() => SizedBox(
      width: 250.0,
      child: ElevatedButton(
        onPressed: () {
          if (name == null ||
              name!.isEmpty ||
              user == null ||
              user!.isEmpty ||
              password == null ||
              password!.isEmpty) {
            normalDialog(context, 'ມີຊ່ອງຫວ່າງຢູ່. ກະລຸນາປ້ອນຂໍ້ມູນໃຫ້ຄົບ.');
          } else if (chooseType == null) {
            normalDialog(context, 'ກະລຸນາເລືອກຊະນິດຂອງຜູ້ໃຊ້');
          }
        },
        style: ElevatedButton.styleFrom(backgroundColor: MyStyle().dartColor),
        child: const Text('Register'),
      ));
  Widget userRadio() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 250.0,
            child: Row(
              children: [
                Radio(
                    value: 'User',
                    groupValue: chooseType,
                    onChanged: (value) {
                      setState(() {
                        chooseType = value;
                      });
                    }),
                Text(
                  'ຜູ້ສັ່ງອາຫານ',
                  style: TextStyle(color: MyStyle().dartColor),
                )
              ],
            ),
          ),
        ],
      );
  Widget shopRadio() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 250.0,
            child: Row(
              children: [
                Radio(
                    value: 'Shop',
                    groupValue: chooseType,
                    onChanged: (value) {
                      setState(() {
                        chooseType = value;
                      });
                    }),
                Text(
                  'ເຈົ້າຂອງຮ້ານ',
                  style: TextStyle(color: MyStyle().dartColor),
                )
              ],
            ),
          ),
        ],
      );
  Widget riderRadio() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 250.0,
            child: Row(
              children: [
                Radio(
                    value: 'Rider',
                    groupValue: chooseType,
                    onChanged: (value) {
                      setState(() {
                        chooseType = value;
                      });
                    }),
                Text(
                  'ຜູ້ສົ່ງອາຫານ',
                  style: TextStyle(color: MyStyle().dartColor),
                )
              ],
            ),
          ),
        ],
      );

  Row showAppName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [MyStyle().showTitle('Ung Food')],
    );
  }

  Widget myLogo() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyStyle().showLogo(),
        ],
      );
  Widget nameForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 250.0,
            child: TextField(
              onChanged: (value) => name = value.trim(),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.face,
                  color: MyStyle().dartColor,
                ),
                labelText: 'Name:',
                labelStyle: TextStyle(color: MyStyle().dartColor),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().dartColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );
  Widget userForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 250.0,
            child: TextField(
              onChanged: (value) => user = value.trim(),
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
          ),
        ],
      );
  Widget passwordForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 250.0,
            child: TextField(
              onChanged: (value) => password = value.trim(),
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
          ),
        ],
      );
}
