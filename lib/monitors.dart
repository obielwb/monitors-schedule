import 'package:flutter/material.dart';
import 'package:monitors_schedule/details.dart';
import 'package:monitors_schedule/monitor_card.dart';

class Monitors extends StatelessWidget {
  const Monitors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.all(10.0),
      children: <Widget>[
        MonitorCard(
            avatar: Container(
              decoration: const BoxDecoration(color: Colors.amber),
            ),
            name: 'João Pedro F. Barbosa',
            email: 'joao@gmail.com'),
        MonitorCard(
            avatar: Container(
              decoration: const BoxDecoration(color: Colors.amber),
            ),
            name: 'João Pedro F. Barbosa',
            email: 'joao@gmail.com'),
      ],
    ));
  }
}
