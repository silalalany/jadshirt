import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_jadshirt/pages/product.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final List<String> news = <String>['0', '1', '2', '3'];

  final List<String> brandthai = <String>['t047', 'whatfalse', 'truly', '1mill'];
  final List<String> namethai = <String>['เสื้อ t047', 'เสื้อ whatfalse', 'เสื้อ truly', 'เสื้อ 1mill'];
  final List<String> brand = <String>['supreme', 'truly', 'truly', '1mill'];
  final List<String> name = <String>['เสื้อ supreme', 'เสื้อ truly', 'เสื้อ truly', 'เสื้อ 1mill'];
  final List<int> startfrom = <int>[1, 1, 1, 1];
  final List<int> highestbid = <int>[1, 1, 1, 1];
  final List<int> lastsale = <int>[1, 1, 1, 1];
  final List<int> priceup = <int>[1, 1, 1, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 216, 216),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                itemCount: news.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0), 
                    child: InkWell(
                      child: Ink(
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 255, 255, 255),
                          image: DecorationImage(
                            image: ExactAssetImage('news/$index.jpg'),
                            fit: BoxFit.cover
                          ),
                        ),
                        
                      ),
                      onTap: () { 
                      },
                    ),
                  );
                }
              )
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 12, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('เสื้อวงไทย'),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Text("see more"),
                  ),
                ]),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                itemCount: brand.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0), 
                    child: InkWell(
                      child: Ink(
                        height: 150,
                        width: 300,
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
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 12, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('เสื้อวงนอก'),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('This is a snackbar')));
                    },
                    child: Text("see more"),
                  ),
                ]),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                itemCount: brandthai.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 0), 
                    child: InkWell(
                      child: Ink(
                        height: 150,
                        width: 300,
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
                                  image: ExactAssetImage('images/${brandthai[index]}.jpg'),
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
                                    '${brandthai[index]}',
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
                                    '${namethai[index]}',
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
                              body: ProductPage('${brandthai[index]}','${startfrom[index]}','${highestbid[index]}','${lastsale[index]}'),
                            );
                          },
                        ));
                      },
                    ),
                  );
                }
              )
            )

        ]),
      )
    );
  }
}