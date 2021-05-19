import 'package:flutter/material.dart';
import 'package:world_clock/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async{
    WorldTime inst  = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await inst.getData();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location': inst.location,
      'flag': inst.flag,
      'time': inst.time,
      'Day': inst.isDayTime,
    });
  }
  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Center(
        child: SpinKitFoldingCube(
            size: 120.0,
            color: Colors.white
        ),
      )
    );
  }
}
