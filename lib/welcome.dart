import 'package:flutter/material.dart';
import 'package:flutter_application_jadshirt/pages/login.dart';
import 'package:flutter_application_jadshirt/pages/register.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String jadshirt = 'jadshirt';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: jadshirt,
      home: WelcomePage(),
      
      debugShowCheckedModeBanner: false,
      
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 150, 0, 120),
              width: 300,
              height: 300,
              decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: ExactAssetImage('splash.png'),
                  fit: BoxFit.fitHeight,
                  ),
              )
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Text(
                      "Login".toUpperCase(),
                      style: TextStyle(fontSize: 14)
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                      foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 0, 0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.0),
                          side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))
                        )
                      )
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return Scaffold(
                            body: LoginPage(),
                          );
                        },
                      ));
                    }
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    child: Text(
                      "Register".toUpperCase(),
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
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return Scaffold(
                            body: RegisterPage(),
                          );
                        },
                      ));
                    }
                  )
                ]
              ),
            ),
            
          ]
        ),
      ),
      
    );
  }
}
