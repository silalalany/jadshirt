import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_jadshirt/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  final user_DB = 'admin';
  final pass_DB = 'admin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 180, 40, 0),
              child: TextField(
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
                controller: username,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username'
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: TextField(
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
                controller: password,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            ElevatedButton(
              child: Text(
                "Go JadShirt".toUpperCase(),
                style: TextStyle(fontSize: 14)
              ),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 0, 0)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))
                  )
                )
              ),
              onPressed: () {
                if (username.text == user_DB && password.text == pass_DB) {
                  Navigator.pushAndRemoveUntil(
                      context,
                    MaterialPageRoute(builder: (context) => MyStatefulWidget('admin','admin','admin','admin')),
                    (Route<dynamic> route) => false,
                  );
                }
                else {
                  ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('รหัสผ่านไม่ถูกต้อง')));
                }
              }
            )
          ],)
      ),
    );
  }
}