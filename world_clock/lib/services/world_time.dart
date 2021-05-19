import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class WorldTime{
  String location; // location of UI
  String time; // The time of the location
  String flag; //Url to flag of the nation
  String url; // Location for url
  bool isDayTime;

  //Constructor
  WorldTime({this.location, this.flag, this.url});

  Future<void> getData() async{
    try{
      Response response = await get('http://worldtimeapi.org/api/timezone/${url}');
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(0,3);

      //TODO: create datetime object
      DateTime dt = DateTime.parse(datetime);
      dt = dt.add(Duration(hours: int.parse(offset)));
      //set the time for api
      time = DateFormat.jm().format(dt);
      print(dt.hour);
      isDayTime = dt.hour > 6 && dt.hour < 20 ? true: false;
    } catch(ex){
      print('Caught an error');
      time = 'Could not get time data';
    }

  }
}