import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bounceButton.dart';

class Dashboard1 extends StatefulWidget {
  @override
  _Dashboard1State createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/bgImage.jpg'),
                      fit: BoxFit.fill)
                ),


              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Center(
                    child: Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.only(top: 60),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/sharjeel.jpg'),
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text("Shargeel", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Center(
                      child: Text("Join us Oct 4,2020", style: TextStyle(color: Colors.white, fontSize: 10,),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                      child: BounceButton(),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    height: 500,
                    width: 350,
                    child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                            child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () {
                                print('Card tapped.');
                              },
                              child: Container(
                                width: 150,
                                height: 100,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                   // Icon(Icons.shopping_cart),
                                     Image.asset('assets/images/shopping-cart.png', height: 50,width: 50,),
                                    Text("Shopping")
                                  ],

                                ),
                              ),

                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () {
                                print('Card tapped.');
                              },
                              child: Container(
                                width: 150,
                                height: 100,
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset('assets/images/car-loan.png', height: 50,width: 50,),
                                      Text("Ubers")
                                    ],

                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () {
                                print('Card tapped.');
                              },
                              child: Container(
                                width: 150,
                                height: 100,
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset('assets/images/groceries.png', height: 50,width: 50,),
                                      Text("Groceries")
                                    ],

                                  ),
                                ),

                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () {
                                print('Card tapped.');
                              },
                              child: Container(
                                width: 150,
                                height: 100,
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset('assets/images/heart.png', height: 50,width: 50,),
                                      Text("Dates")
                                    ],

                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () {
                                print('Card tapped.');
                              },
                              child: Container(
                                width: 150,
                                height: 100,
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset('assets/images/equalization.png', height: 50,width: 50,),
                                      Text("Stats")
                                    ],

                                  ),
                                ),

                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () {
                                print('Card tapped.');
                              },
                              child: Container(
                                width: 150,
                                height: 100,
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset('assets/images/card-payment.png', height: 50,width: 50,),
                                      Text("Cards")
                                    ],

                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),),

                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}
