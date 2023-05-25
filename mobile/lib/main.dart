import 'package:flutter/material.dart';
import 'package:monitors_schedule/monitors.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Horários dos Monitores',
    home: Monitors(),
    debugShowCheckedModeBanner: false,
  ));
}
