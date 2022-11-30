import 'dart:convert';
import 'package:http/http.dart';

class WorldTime {
  String? location;
  late String time;
  String? flag;
  String? url;
  WorldTime({this.location, this.url, this.flag});
  Future<void> getData() async {
    Response data =
        await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map res = jsonDecode(data.body);
    //print(res['datetime']);
    String dateTime = res['datetime'];
    String offset = res['utc_offset'];
    //print(DateTime + Offset);
    DateTime now = DateTime.parse(dateTime);
    offset = offset.substring(1, 3);
    now.add(Duration(hours: int.parse(offset)));

    time = now.toString();
  }
}
