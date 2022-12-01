import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time_app/api/worldtime.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading...';
  void setTime() async {
    WorldTime instance =
        WorldTime(location: 'Berlin', flag: 'Gernmany', url: 'Europe/Berlin');
    await instance.getData();
    setState(() {
      time = instance.time;
    });
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDay': instance.dayTime
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.cyan,
          size: 50,
        ),
      ),
    );
  }
}
