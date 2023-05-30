import 'package:flutter/material.dart';
import 'package:monitors_schedule/monitor.dart';
import 'dart:convert';

class MonitorDetails extends StatelessWidget {
  const MonitorDetails({super.key, required this.monitor});

  final Monitor monitor;
// Map<String, String> map = Map.castFrom(json.decode(jsonString))

  @override
  Widget build(BuildContext context) {
    //print();
    //String monitorsSchedule = monitor.schedule.toString().replaceAll('"', "'");
    String jsonString =
        '{"monday": [{"start": "17:30", "end": "19:00"}, {"start": "20:30", "end": "21:15"}], "tuesday": [{"start": "17:30", "end": "23:00"}], "wednesday": [{"start": "17:30", "end": "19:00"}], "thursday": [{"start": "17:30", "end": "19:00"}], "friday": [{"start": "17:30", "end": "19:00"}]}';

    Map<String, dynamic> schedule = jsonDecode(jsonString);

    // Accessing and manipulating the parsed data
    List<Map<String, dynamic>> monday =
        List<Map<String, dynamic>>.from(schedule['monday']);
    print('Monday:');
    for (var timeSlot in monday) {
      String start = timeSlot['start'];
      String end = timeSlot['end'];
      print('Start: $start, End: $end');
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              monitor.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Voltar"))
          ],
        ),
      ),
    );
  }
}
