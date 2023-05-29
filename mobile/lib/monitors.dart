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
            id: '1',
            name: 'João Pedro F. Barbosa',
            email: 'joao@gmail.com'),
        const Padding(padding: EdgeInsets.only(bottom: 10.0)),
        MonitorCard(
            avatar: Container(
              decoration: const BoxDecoration(color: Colors.amber),
            ),
            id: '2',
            name: 'João Pedro F. Barbosa',
            email: 'joao@gmail.com'),
      ],
    ));
  }
}
