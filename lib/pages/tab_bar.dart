import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Tab_Bar extends StatefulWidget {
  @override
  _Tab_BarState createState() => _Tab_BarState();
}

   apiCall() async {
  var response = await http.get('http://demo0422020.mockable.io/');
  print('this is response $response');
  print('this is response body ${response.body}');
  var parsedJson = json.decode(response.body);
  print(parsedJson);
   print(parsedJson['msg']);
  var address= Address.fromJson(parsedJson);
  address.books.forEach((element) {print('123 '+element);});


 //    var jsonData= '{"name": "dane","alias": "FilledStack"}';
 //    var parsedJson=jsonDecode(jsonData);
 //    var user= User.fromJson(parsedJson);
 //    print('${user.name} is ${user.alias}');

  }


class _Tab_BarState extends State<Tab_Bar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiCall();
  }

  final List<String> names = <String>['Aby', 'Aish', 'Ayan', 'Ben', 'Bob', 'Charlie', 'Cook', 'Carline'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cyber Meteors"),
          bottom: TabBar(
            tabs: [
              new Tab(text: "car",icon: Icon(Icons.directions_car)),
              new Tab(text: "Bus",icon: Icon(Icons.directions_transit)),
              new Tab(text: "Cycle",icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            new ListView(
              children: list,
            ),

             ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    margin: EdgeInsets.all(2),

                    child: Center(
                        child: Text('${names[index]}',
                          style: TextStyle(fontSize: 18),
                        )
                    ),
                  );
                }
            ),


          Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
List<Widget> list = <Widget>[
new ListTile(
title: new Text('CineArts at the Empire',
style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
subtitle: new Text('85 W Portal Ave'),
leading: new Icon(
Icons.theaters,
color: Colors.blue[500],
),
),
  new ListTile(
    title: new Text('The Castro Theater',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('429 Castro St'),
    leading: new Icon(
      Icons.theaters,
      color: Colors.blue[500],
    ),
  ),
  new ListTile(
    title: new Text('Alamo Drafthouse Cinema',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('2550 Mission St'),
    leading: new Icon(
      Icons.theaters,
      color: Colors.blue[500],
    ),
  ),
  new ListTile(
    title: new Text('Roxie Theater',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('3117 16th St'),
    leading: new Icon(
      Icons.theaters,
      color: Colors.blue[500],
    ),
  ),
  new ListTile(
    title: new Text('United Artists Stonestown Twin',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('501 Buckingham Way'),
    leading: new Icon(
      Icons.theaters,
      color: Colors.blue[500],
    ),
  ),
  new ListTile(
    title: new Text('AMC Metreon 16',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('135 4th St #3000'),
    leading: new Icon(
      Icons.theaters,
      color: Colors.blue[500],
    ),
  ),
  new Divider(),
  new ListTile(
    title: new Text('K\'s Kitchen',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('757 Monterey Blvd'),
    leading: new Icon(
      Icons.restaurant,
      color: Colors.blue[500],
    ),
  ),
  new ListTile(
    title: new Text('Emmy\'s Restaurant',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('1923 Ocean Ave'),
    leading: new Icon(
      Icons.restaurant,
      color: Colors.blue[500],
    ),
  ),
  new ListTile(
    title: new Text('Chaiya Thai Restaurant',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('272 Claremont Blvd'),
    leading: new Icon(
      Icons.restaurant,
      color: Colors.blue[500],
    ),
  ),
  new ListTile(
    title: new Text('La Ciccia',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
    subtitle: new Text('291 30th St'),
    leading: new Icon(
      Icons.restaurant,
      color: Colors.blue[500],
    ),
  ),
];

// class User{
//   final String name;
//   final String alias;
//
//   User(
//   {
//     this.name,
//     this.alias,
// }
//       );
//   User.fromJson(Map <String, dynamic> data)
//
//   :  name= data['name'],
//     alias= data['alias'];
//   }

class Address {
  final String msg;
  final List<String> books;

  Address({
    this.msg,
    this.books
  });

  factory Address.fromJson(Map<String, dynamic> parsedJson) {
    var streetsFromJson  = parsedJson['books'];
    //print(streetsFromJson.runtimeType);
    // List<String> streetsList = new List<String>.from(streetsFromJson);
     List<String> streetsList = streetsFromJson.cast<String>();
    // streetsList.forEach((element) {print(element);});
    return new Address(
      msg: parsedJson['msg'],
      books: streetsList,
    );
  }

}

