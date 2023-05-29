import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(id))),
    );
  }
}
