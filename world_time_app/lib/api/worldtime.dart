import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String? location;
  late String time;
  String? flag;
  String? url;
  bool dayTime = true;
  WorldTime({this.location, this.url, this.flag});
  Future<void> getData() async {
    try {
      Response data =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map res = jsonDecode(data.body);
      //print(res['datetime']);
      String dateTime = res['datetime'];
      String offset = res['utc_offset'];
      //print(DateTime + Offset);
      DateTime now = DateTime.parse(dateTime);
      offset = offset.substring(1, 3);
      now = now.add(Duration(hours: int.parse(offset)));
      dayTime = now.hour > 5 && now.hour < 18 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      time = 'Could not retrive time data';
    }
  }
}
