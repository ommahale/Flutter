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
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
            child: Column(
          children: [
            Text(
              'Time in Berlin is',
              style: TextStyle(fontSize: 20, color: Colors.grey[500]),
            ),
            Text(
              time,
              style: TextStyle(fontSize: 19, color: Colors.grey[900]),
            )
          ],
        )),
      ),
    );
  }
}
