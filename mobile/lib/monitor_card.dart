import 'package:flutter/material.dart';
import 'package:monitors_schedule/details.dart';

class _MontitorDescription extends StatelessWidget {
  const _MontitorDescription({required this.name, required this.email});

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
  const MonitorCard(
      {super.key,
      required this.avatar,
      required this.name,
      required this.email});

  final Widget avatar;
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          height: 100.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(aspectRatio: 1.0, child: avatar),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                    child: _MontitorDescription(email: email, name: name)),
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Details(name: name);
          }));
        });
  }
}
