import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:monitors_schedule/monitor_details.dart';
import 'package:monitors_schedule/monitor.dart';
import 'package:monitors_schedule/monitor_card.dart';

import 'api.dart';

class Monitors extends StatefulWidget {
  const Monitors({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MonitorsState();
}

class MonitorsState extends State {
  List<Monitor> monitors = <Monitor>[];

  getMonitors() {
    Api.getMonitors().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        monitors = list.map((model) => Monitor.fromJson(model)).toList();
      });
    });
  }

  @override
  initState() {
    super.initState();
    getMonitors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: monitors.length,
            itemBuilder: (context, index) {
              Monitor monitor = monitors[index];
              return ListTile(
                  title: MonitorCard(monitor: monitor),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MonitorDetails(monitor: monitor);
                    }));
                  });
            }));
  }
}
