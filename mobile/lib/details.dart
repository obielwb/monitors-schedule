import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(name))),
    );
  }
}
