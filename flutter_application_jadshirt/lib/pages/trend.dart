

import 'package:flutter/material.dart';
import 'package:flutter_application_jadshirt/pages/product.dart';
import 'package:google_fonts/google_fonts.dart';

class Trendpage extends StatefulWidget {
  const Trendpage({ Key? key }) : super(key: key);

  @override
  State<Trendpage> createState() => _TrendpageState();
}

class _TrendpageState extends State<Trendpage> {



  final List<String> brand = <String>['1mill', 'h3f', 'kvanjai', 'supreme', 't047', 'telextelexs', 'threeMan', 'truly', 'whaldolph', 'whatfalse'];
  final List<String> name = <String>['1mill', 'h3f', 'kvanjai', 'supreme', 't047', 'telextelexs', 'threemandowns', 'truly', 'whaldolph', 'whatfalse'];
  final List<int> startfrom = <int>[1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
  final List<int> highestbid = <int>[1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
  final List<int> lastsale = <int>[1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
  final List<int> priceup = <int>[1, 1, 1, 1, 1, 1, 1, 1, 1, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 216, 216),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: brand.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.fromLTRB(15, 5, 15, 15), 
            child: InkWell(
              child: Ink(
                height: 150, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      width: 130,
                      height: 130,
                      decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: ExactAssetImage('images/${brand[index]}.jpg'),
                          fit: BoxFit.contain,
                          ),
                      )
                    ),
                    Container(
                      width: 130,
                      height: 130,
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            '${brand[index]}',
                            style: GoogleFonts.mulish(
                              textStyle: TextStyle(fontWeight: FontWeight.bold),
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Container( 
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            '${name[index]}',
                            style: GoogleFonts.mulish(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container( 
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            'START FROM  : ฿${startfrom[index]}',
                            style: GoogleFonts.mulish(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container( 
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            'HIGHEST BID  : ฿${highestbid[index]}',
                            style: GoogleFonts.mulish(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'LAST SALE    : ฿${lastsale[index]}',
                            style: GoogleFonts.mulish(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                          alignment: Alignment.topLeft,
                          child: Row(children: [
                            Icon(
                              Icons.arrow_drop_up,
                              size: 30,
                              color: Color.fromARGB(255, 24, 248, 3),
                            ),
                            Text(
                              '+${priceup[index]}%',
                              style: GoogleFonts.mulish(
                                textStyle: Theme.of(context).textTheme.headline4,
                                fontSize: 15,
                                color: Color.fromARGB(255, 24, 248, 3),
                              ),
                            ),
                          ],
                          )
                        )
                      ]),
                    )
                  ],
                )
              ),
              onTap: () { 
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      body: ProductPage('${brand[index]}','${startfrom[index]}','${highestbid[index]}','${lastsale[index]}'),
                    );
                  },
                ));
              },
            ),
          );
        }
      )
    );
  }
}