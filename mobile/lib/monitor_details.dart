import 'package:flutter/material.dart';
import 'package:monitors_schedule/api.dart';
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "${Api.baseUrl}${monitor.avatar}",
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Text(
              monitor.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(
              monitor.email,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            ),
            const SizedBox(height: 6),
            const Text(
              "Horários",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            ),
            const SizedBox(height: 4),
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
                        return Text("Das $start às $end");
                      }).toList(),
                    ),
                  );
                }),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                side: MaterialStateProperty.all<BorderSide>(
                  const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(
                      fontSize: 14.0, fontWeight: FontWeight.normal),
                ),
              ),
              child: const Text("Voltar"),
            )
          ],
        ),
      ),
    );
  }
}
