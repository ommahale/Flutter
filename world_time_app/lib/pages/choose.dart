import 'package:flutter/material.dart';

import '../api/worldtime.dart';

class Loaction extends StatefulWidget {
  const Loaction({super.key});

  @override
  State<Loaction> createState() => _LoactionState();
}

class _LoactionState extends State<Loaction> {
  List<WorldTime> locations = [
    WorldTime(url: 'Asia/Kolkata', location: 'Kolkata', flag: 'india.jpg'),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.jpg'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.jpg'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.jpg'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonasia.png'),
    WorldTime(url: 'Asia/Tokyo', location: 'Tokyo', flag: 'japan.jpg'),
    WorldTime(url: 'Australia/Sydney', location: 'Sydney', flag: 'Aus.jpg'),
  ];
  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getData();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'url': instance.url,
      'isDay': instance.dayTime,
      'time': instance.time
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: ListTile(
                  onTap: (() {
                    updateTime(index);
                  }),
                  onLongPress: () {
                    Navigator.pushNamed(context, '/');
                  },
                  title: Text(locations[index].location.toString()),
                  leading: CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/' + locations[index].flag.toString())),
                ),
              ),
            );
          })),
    );
  }
}
