import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatelessWidget {
  
  final String? txtbrand;
  final String? txtstartfrom;
  final String? txthighestbid;
  final String? txtlastsale;
  const ProductPage(this.txtbrand, this.txtstartfrom,this.txthighestbid,this.txtlastsale);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: ListView(
        children: [
          Container(
            width: 290,
            height: 290,
            decoration: new BoxDecoration(
            image: new DecorationImage(
                image: ExactAssetImage('images/$txtbrand.jpg'),
                fit: BoxFit.fitHeight,
                ),
            )
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(25, 5, 0, 5),
            child: Text('$txtbrand'),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(25, 10, 25, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text('START FROM'),
                    Text('฿$txtstartfrom'),
                  ],
                ),
                Column(
                  children: [
                    Text('HIGHEST BID'),
                    Text('฿$txthighestbid'),
                  ],
                ),
                Column(
                  children: [
                    Text('LAST SALE'),
                    Text('฿$txtlastsale'),
                  ],
                )
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(25, 1, 25, 1),
            child: Divider(
              color: Color.fromARGB(255, 156, 138, 138),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(25, 5, 0, 10),
            child: Text('Shipping Method'),
          ),
          Container(
            height: 45,
            margin: const EdgeInsets.fromLTRB(25, 0, 0, 0), 
            child: InkWell(
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(children: [
                  Container(
                    child: 
                      Icon(Icons.bolt,
                        size: 30,
                        color: Colors.green,
                      ),
                  ),
                  Container(
                    width: 200,
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Text(
                            'Express delivery',
                            style: GoogleFonts.mulish(
                              textStyle: Theme.of(context).textTheme.headline5,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container( 
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 5),
                          child: Text(
                            'Ship via messenger',
                            style: GoogleFonts.mulish(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                ],
                ),
              ),
              onTap: () { 
                print("Click event on Container"); 
              },
            ),
          ),
          Container(
            height: 45,
            margin: const EdgeInsets.fromLTRB(25, 0, 0, 0), 
            child: InkWell(
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(children: [
                  Container(
                    child: 
                      Icon(Icons.bolt,
                        size: 30,
                        color: Colors.green,
                      ),
                  ),
                  Container(
                    width: 200,
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Text(
                            'Standard Shipping',
                            style: GoogleFonts.mulish(
                              textStyle: Theme.of(context).textTheme.headline5,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container( 
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 5),
                          child: Text(
                            'Ship via logistic partner (3-7 days)',
                            style: GoogleFonts.mulish(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                ],
                ),
              ),
              onTap: () { 
                print("Click event on Container"); 
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(25, 1, 25, 1),
            child: Divider(
              color: Color.fromARGB(255, 156, 138, 138),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(25, 5, 0, 10),
            child: Text('Product detail'),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(25, 10, 25, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text('Brand'),
                    Text('Nike'),
                  ],
                ),
                Column(
                  children: [
                    Text('SKU'),
                    Text('AS40-12'),
                  ],
                ),
                Column(
                  children: [
                    Text('Colorwat'),
                    Text('BLACK/GREY'),
                  ],
                ),
              ],
            )
          ),







        ]
      ),

      bottomNavigationBar: Container(
        height: 60,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 160,
              height: 40,
              child: ElevatedButton(
                child: Text(
                  "Sell".toUpperCase(),
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
                }
              ),
            ),
            SizedBox(
              width: 160,
              height: 40,
              child: ElevatedButton(
                child: Text(
                  "Buy".toUpperCase(),
                  style: TextStyle(fontSize: 14)
                ),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                      side: BorderSide(color: Colors.green)
                    )
                  )
                ),
                onPressed: () {
                }
              ),
            ),
            
               
          ]),
      )
        
      
      
    );
  }
}