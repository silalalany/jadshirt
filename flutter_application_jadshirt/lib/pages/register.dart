import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_jadshirt/main.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conpassword = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(40, 125, 40, 0),
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
              margin: const EdgeInsets.fromLTRB(40, 20, 40, 0),
              child: TextField(
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
                controller: email,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'email'
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 20, 40, 0),
              child: TextField(
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
                controller: phone,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'phone'
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 20, 40, 0),
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
            Container(
              margin: const EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: TextField(
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
                controller: conpassword,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'confirm Password',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  checkColor: Color.fromARGB(255, 255, 255, 255),
                  fillColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 0, 0)),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = true;
                    });
                  },
                ),
                Text('ฉันยอมรับข้อตกลงในการใช้เเอพ')
              ],
            ),
            Container(
              height: 10,
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
                if (username.text == '') {
                  ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('โปรดกรอก username')));
                }
                else if (email.text == '') {
                  ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('โปรดกรอก email')));
                }
                else if (phone.text == '') {
                  ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('โปรดกรอก phone')));
                }
                else if (password.text == '') {
                  ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('โปรดกรอก Password')));
                }
                else if (password.text != conpassword.text) {
                  ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('โปรดกรอก confirm password ให้ถูกต้อง')));
                }
                else if (isChecked != true) {
                  ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('คุณต้องยอมรับข้อตกลงในการใช้เเอพ')));
                }
                else {
                  Navigator.pushAndRemoveUntil(
                      context,
                    MaterialPageRoute(builder: (context) => MyStatefulWidget(username.text, email.text, phone.text, password.text)),
                    (Route<dynamic> route) => false,
                  );
                }
              }
            )
          ],)
      ),
    );
  }
}