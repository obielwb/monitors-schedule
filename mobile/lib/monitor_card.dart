import 'package:flutter/material.dart';
import 'package:monitors_schedule/api.dart';
import 'package:monitors_schedule/monitor_details.dart';
import 'package:monitors_schedule/monitor.dart';

class MonitorsDescription extends StatelessWidget {
  final String baseUrl = "http://localhost:3030";

  const MonitorsDescription({required this.name, required this.email});

  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Text(name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(email,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12.0, color: Colors.black54))
            ]))
      ],
    );
  }
}

class MonitorCard extends StatelessWidget {
  const MonitorCard({
    super.key,
    required this.monitor,
  });

  final Monitor monitor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          height: 100.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                  aspectRatio: 1.0,
                  child: Image.network("$baseUrl${monitor.avatar}")),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                    child: MonitorsDescription(
                        email: monitor.email, name: monitor.name)),
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MonitorDetails(monitor: monitor);
          }));
        });
  }
}
