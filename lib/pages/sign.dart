import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
         child: Column(
           children: <Widget>[
             Container(
               height: 70,
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Container(

                     width:80 ,

                     decoration: BoxDecoration(

                         image: DecorationImage(image: AssetImage('assets/images/clock.png'), fit: BoxFit.contain)
                     ),
                   ),

                   Text("Cyber Meteors"),

                   Container(
                     width:80 ,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                         image: DecorationImage(image: AssetImage('assets/images/background.png'),
                             fit: BoxFit.contain)

                     ),
                   ),

                 ],
               ),

             ),

             SizedBox(height: 40,),
             Container(
             height: 250,
               width: MediaQuery.of(context).size.width,
               child: CarouselWithIndicatorDemo(),
             ),

             SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(left:8.0),
               child: Align(alignment: Alignment.topLeft, child: Text('Menu',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blueAccent),)),
             ),
             SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(left:40.0, right: 40.0,top: 10.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.lightBlue,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.android),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),

                    Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.lightBlue,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.android),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),

                    Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.lightBlue,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.android),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],


               ),
             ),

             SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(left:40.0, right: 40.0,top: 10.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Ink(
                     decoration: const ShapeDecoration(
                       color: Colors.lightBlue,
                       shape: CircleBorder(),
                     ),
                     child: IconButton(
                       icon: Icon(Icons.android),
                       color: Colors.white,
                       onPressed: () {},
                     ),
                   ),

                   Ink(
                     decoration: const ShapeDecoration(
                       color: Colors.lightBlue,
                       shape: CircleBorder(),
                     ),
                     child: IconButton(
                       icon: Icon(Icons.android),
                       color: Colors.white,
                       onPressed: () {},
                     ),
                   ),

                   Ink(
                     decoration: const ShapeDecoration(
                       color: Colors.lightBlue,
                       shape: CircleBorder(),
                     ),
                     child: IconButton(
                       icon: Icon(Icons.android),
                       color: Colors.white,
                       onPressed: () {},
                     ),
                   ),
                 ],


               ),
             ),

             SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(left:8.0),
               child: Align(alignment: Alignment.topLeft, child: Text('Sales',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blueAccent),)),
             ),

             SizedBox(height: 10,),
             Container(
               height: 200,
               width: MediaQuery.of(context).size.width,
            child:     ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 20,),
                Container(
                  width: 160.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.red,),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 160.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 160.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.green,),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 160.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow,),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 160.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,),
                ),
                SizedBox(width: 20,),
              ],
            ) ,

             ),
             SizedBox(height: 20,),

           ],
         ),
        ),
      ),

      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: () {},
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 4),
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: const Alignment(0.7, -0.5),
                  end: const Alignment(0.6, 0.5),
                  colors: [
                    Color(0xFF53a78c),
                    Color(0xFF70d88b),
                  ],
                ),
              ),
              child: Icon(Icons.photo_camera, size: 30),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.android),
              color: Colors.red,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.android),
              color: Colors.blue,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
     return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
          children: [
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((url) {
                int index = imgList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          ]
      ),
    );
  }
}


final List<Widget> imageSliders = imgList.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                // child: Text(
                //   'No. ${imgList.indexOf(item)} image',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 20.0,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ),
            ),
          ],
        )
    ),
  ),
)).toList();

