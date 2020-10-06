import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill
                  )
                ),
                child: Stack(

                  children: <Widget> [
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 100,
                      child:  Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/light-1.png')
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      width: 80,
                      height: 70,
                      child:  Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/light-2.png')
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      right: 40,
                      top: 40,
                      width: 80,
                      height: 70,
                      child:  Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/clock.png')
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      child:  Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Center(
                          child: Text("SignUp", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    )
                  ],

                ),
              ),

              Padding(
                padding: EdgeInsets.all(20.0),


                  child: Container(
                    padding:EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, 0.2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10)
                          )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[

                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Color.fromRGBO(143, 148, 251, 0.2),
                                  //     blurRadius: 20.0,
                                  //     offset: Offset(0, 20)
                                  //   )
                                  //   ]

                                ),

                                child: Container(

                                    child:
                                      Container(
                                        padding: EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.blue[200]))
                                        ),

                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "First Name",
                                              hintStyle: TextStyle(color: Colors.grey)
                                          ),
                                        ),
                                      )

                                ),

                              ),
                            ),
                            SizedBox(width: 3,),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //       color: Color.fromRGBO(143, 148, 251, 0.2),
                                    //       blurRadius: 20.0,
                                    //       offset: Offset(0, 20)
                                    //   )
                                    // ]

                                ),

                                child: Container(

                                    child:
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.blue[200]))
                                      ),

                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Last Name",
                                            hintStyle: TextStyle(color: Colors.grey)
                                        ),
                                      ),
                                    )

                                ),

                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 3,),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              // boxShadow: [
                              //   BoxShadow(
                              //       color: Color.fromRGBO(143, 148, 251, .2),
                              //       blurRadius: 20.0,
                              //       offset: Offset(0, 20)
                              //   )
                              // ]

                          ),

                          child: Container(

                              child:
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.blue[200]))
                                ),

                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(color: Colors.grey)
                                  ),
                                ),
                              )

                          ),

                        ),
                        SizedBox(height: 3,),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              // boxShadow: [
                              //   BoxShadow(
                              //       color: Color.fromRGBO(143, 148, 251, 0.2),
                              //       blurRadius: 20.0,
                              //       offset: Offset(0, 20)
                              //   )
                              // ]

                          ),

                          child: Container(

                              child:
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.blue[200]))
                                ),

                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey)
                                  ),
                                ),
                              )

                          ),

                        ),
                        SizedBox(height: 3,),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              // boxShadow: [
                              //   BoxShadow(
                              //       color: Color.fromRGBO(143, 148, 251, 0.2),
                              //       blurRadius: 10.0,
                              //       offset: Offset(0, 5)
                              //   )
                              // ]

                          ),

                          child: Container(

                              child:
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.blue[200]))
                                ),

                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Confirm Password",
                                      hintStyle: TextStyle(color: Colors.grey)
                                  ),
                                ),
                              )

                          ),

                        ),

                      ],
                    ),
                  ),



              ),
             
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),

                ),
                color: Color.fromRGBO(143, 148, 251, 1),
                onPressed: (){},
                textColor: Colors.white,
                padding:  EdgeInsets.all(0.0),
                child: const Text('SignUp', style: TextStyle(fontSize: 20)),

              )

            ],
          ),
        ),
      ),
    );
  }
}
