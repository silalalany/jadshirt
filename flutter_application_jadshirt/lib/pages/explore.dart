import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explorepage extends StatefulWidget {
  const Explorepage({ Key? key }) : super(key: key);

  @override
  State<Explorepage> createState() => _ExplorepageState();
}

class _ExplorepageState extends State<Explorepage> {

  final List<String> top = <String>['t1', 't2', 't3', 't4', 't5', 't6', 't7'];
  final List<String> cen = <String>['c1', 'c2', 'c3', 'c4', 'c5', 'c6', 'c7'];
  final List<String> bot = <String>['b1', 'b2', 'b3', 'b4', 'b5'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 216, 216),
      body: Center(
        child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
              width: 375,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              child: 
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    height: 40,
                    margin: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                    child: TextField(
                      cursorColor: Colors.black,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0)
                      ),
                      decoration: InputDecoration(
                        hintText: "Search releases...",
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ]
              ),
            ),  
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 160,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                itemCount: top.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0), 
                    child: InkWell(
                      child: Ink(
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 255, 255, 255),
                          image: DecorationImage(
                            image: ExactAssetImage('images/${top[index]}.png'),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      onTap: () { 
                        print("Click event on Container"); 
                      },
                    ),
                  );
                }
              )
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 160,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                itemCount: cen.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0), 
                    child: InkWell(
                      child: Ink(
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 255, 255, 255),
                          image: DecorationImage(
                            image: ExactAssetImage('images/${cen[index]}.png'),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      onTap: () { 
                        print("Click event on Container"); 
                      },
                    ),
                  );
                }
              )
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 160,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                itemCount: bot.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0), 
                    child: InkWell(
                      child: Ink(
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 255, 255, 255),
                          image: DecorationImage(
                            image: ExactAssetImage('images/${bot[index]}.webp'),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      onTap: () { 
                        print("Click event on Container"); 
                      },
                    ),
                  );
                }
              )
            ),
            
            
            
          ],
          
        ),
      )
    );
  }
}