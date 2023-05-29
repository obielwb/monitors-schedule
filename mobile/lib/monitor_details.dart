import 'package:flutter/material.dart';
import 'package:monitors_schedule/monitor.dart';

class MonitorDetails extends StatelessWidget {
  const MonitorDetails({super.key, required this.monitor});

  final Monitor monitor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Voltar"))),
    );
  }
}
