import 'package:flutter/cupertino.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class JsonPractice extends StatefulWidget {
  @override
  _JsonPracticeState createState() => _JsonPracticeState();
}
// Future<String> _loadAStudentAsset() async {
//   return await rootBundle.loadString('assets/student.json');
// }
//Future loadStudent() async {
//   String jsonString = await _loadAStudentAsset();
//   final jsonResponse = json.decode(jsonString);
//   Student student = new Student.fromJson(jsonResponse);
//   print(student.s_score);


// }


class _JsonPracticeState extends State<JsonPractice> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  //  loadStudent();
    var jsonStreet =   '{"city": "Mumbai", "streets": ["address1","address2","address3"]}';
    var parsedJson=jsonDecode(jsonStreet);
    var address= Address.fromJson(parsedJson);
    address.streets.forEach((element) {print(element);});


  }
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

class Address {
  final String city;
  final List<String> streets;

  Address({
    this.city,
    this.streets
  });

  factory Address.fromJson(Map<String, dynamic> parsedJson) {
    var streetsFromJson  = parsedJson['streets'];
    //print(streetsFromJson.runtimeType);
    // List<String> streetsList = new List<String>.from(streetsFromJson);
    List<String> streetsList = streetsFromJson.cast<String>();
      streetsList.forEach((element) {print(element);});
    return new Address(
      city: parsedJson['city'],
      streets: streetsList,
    );
  }

}
