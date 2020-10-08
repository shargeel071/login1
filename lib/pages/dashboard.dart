import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/config/screen_config.dart';

import 'bounceButton.dart';

class Dashboard1 extends StatefulWidget {
  @override
  _Dashboard1State createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Container(
      height: ScreenConfig.screenHeight,
      width: ScreenConfig.screenWidth,
      child: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: ScreenConfig.blockHeight * 37,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/bgImage.jpg'),
                    fit: BoxFit.fill)
              ),


            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: ScreenConfig.blockHeight * 5,),
                Center(
                  child: Container(
                      height: ScreenConfig.blockHeight * 10,
                      width: ScreenConfig.blockHeight * 10,
                    //  margin: EdgeInsets.only(top: 60),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/sharjeel.jpg'),
                      )
                  ),
                ),
                SizedBox(height: ScreenConfig.blockHeight * 1,),

                Container(
                 // margin: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text("Shargeel", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: ScreenConfig.blockHeight * 0.7,),

                Container(
                 // margin: EdgeInsets.only(top: 5),
                  child: Center(
                    child: Text("Join us Oct 4,2020", style: TextStyle(color: Colors.white, fontSize: 10,),),
                  ),
                ),
                SizedBox(height: ScreenConfig.blockHeight * 1,),

                Container(
                  //margin: EdgeInsets.only(top: 10),
                    child: BounceButton(),
                ),
                SizedBox(height: ScreenConfig.blockHeight * 1,),
                Container(
                  height: ScreenConfig.blockHeight * 65,
                  // width: 350,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
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
    );
  }
}
