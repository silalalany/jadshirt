import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilepage extends StatelessWidget {
  
  final String? txtusername;
  final String? txtemail;
  final String? txtphone;
  final String? txtpassword;
  const Profilepage(this.txtusername, this.txtemail,this.txtphone,this.txtpassword);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proflie'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ListView (
          padding: const EdgeInsets.all(8),
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: 
                      Icon(Icons.account_box,
                        size: 100,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                  ),
                  Container(
                    width: 200,
                    height: 70,
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            '$txtusername',
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
                            'email@email.com',
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
              )
            ),
            Container(
              height: 70,
              margin: const EdgeInsets.fromLTRB(15, 0, 0, 0), 
              child: InkWell(
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(children: [
                    Container(
                      child: 
                        Icon(Icons.local_mall_outlined,
                          size: 30,
                          color: Color.fromARGB(255, 0, 0, 0),
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
                              'Buying',
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
                              'Active bids & Order tracking',
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
              height: 70,
              margin: const EdgeInsets.fromLTRB(15, 0, 0, 0), 
              child: InkWell(
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(children: [
                    Container(
                      child: 
                        Icon(Icons.local_offer_outlined,
                          size: 30,
                          color: Color.fromARGB(255, 0, 0, 0),
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
                              'Selling',
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
                              'Active asks & Order tracking',
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
              height: 70,
              margin: const EdgeInsets.fromLTRB(15, 0, 0, 0), 
              child: InkWell(
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(children: [
                    Container(
                      child: 
                        Icon(Icons.local_activity_outlined,
                          size: 30,
                          color: Color.fromARGB(255, 0, 0, 0),
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
                              'Coupon & Rewards',
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
                              'Rewards redeem & Point history',
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
              height: 70,
              margin: const EdgeInsets.fromLTRB(15, 0, 0, 0), 
              child: InkWell(
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(children: [
                    Container(
                      child: 
                        Icon(Icons.bookmark_border,
                          size: 30,
                          color: Color.fromARGB(255, 0, 0, 0),
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
                              'Wishlists',
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
                              'Products you saved to wishlist',
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
              height: 70,
              margin: const EdgeInsets.fromLTRB(15, 0, 0, 0), 
              child: InkWell(
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(children: [
                    Container(
                      child: 
                        Icon(Icons.event,
                          size: 30,
                          color: Color.fromARGB(255, 0, 0, 0),
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
                              'Events',
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
                              'Events you have joined',
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
              height: 70,
              margin: const EdgeInsets.fromLTRB(15, 0, 0, 0), 
              child: InkWell(
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(children: [
                    Container(
                      child: 
                        Icon(Icons.settings_outlined,
                          size: 30,
                          color: Color.fromARGB(255, 0, 0, 0),
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
                              'Settings',
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
                              'Shipping, Payment, Language',
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
              height: 70,
              margin: const EdgeInsets.fromLTRB(15, 0, 0, 0), 
              child: InkWell(
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(children: [
                    Container(
                      child: 
                        Icon(Icons.logout_outlined,
                          size: 30,
                          color: Color.fromARGB(255, 0, 0, 0),
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
                              'Log out',
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
                              'Log out from JadShirt',
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

          ],
        )
        
      ),
      
    );
  }
}