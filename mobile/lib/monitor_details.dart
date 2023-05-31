import 'package:flutter/material.dart';
import 'package:monitors_schedule/monitor.dart';
import 'dart:convert';

class MonitorDetails extends StatelessWidget {
  const MonitorDetails({super.key, required this.monitor});

  final Monitor monitor;
// Map<String, String> map = Map.castFrom(json.decode(jsonString))

  @override
  Widget build(BuildContext context) {
    Map<dynamic, dynamic> data = monitor.toJson();
    Map<dynamic, dynamic> schedule = data['schedule'];

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
            ListView.builder(
                shrinkWrap: true,
                itemCount: schedule.keys.length,
                itemBuilder: (BuildContext context, index) {
                  String day = schedule.keys.elementAt(index);
                  List<dynamic> timeSlots = schedule[day];

                  return ListTile(
                    title: Text(day),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: timeSlots.map<Widget>((timeSlot) {
                        String start = timeSlot['start'];
                        String end = timeSlot['end'];
                        return Text("Início: $start, Final: $end");
                      }).toList(),
                    ),
                  );
                }),
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
