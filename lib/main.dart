import 'package:flutter/material.dart';
import 'package:flutter_application_jadshirt/pages/trend.dart';
import 'package:flutter_application_jadshirt/pages/home.dart';
import 'package:flutter_application_jadshirt/pages/explore.dart';
import 'package:flutter_application_jadshirt/pages/profile.dart';
import 'package:flutter_application_jadshirt/pages/product.dart';
import 'package:flutter_application_jadshirt/welcome.dart';

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

class MyStatefulWidget extends StatefulWidget {

  final String? txtusername;
  final String? txtemail;
  final String? txtphone;
  final String? txtpassword;
  const MyStatefulWidget(this.txtusername, this.txtemail,this.txtphone,this.txtpassword);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  

  
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Trendpage(),
    Homepage(),
    Explorepage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      appBar: AppBar(
        title: const Text('JadShirt'),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle,),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    body: Profilepage(widget.txtusername,widget.txtemail,widget.txtphone,widget.txtpassword),
                  );
                },
              ));
            },
          ),
        ],
      ),

      

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph_sharp),
            label: 'Trend',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 0, 0, 0),
        onTap: _onItemTapped,
      ),
    );
  }
}
