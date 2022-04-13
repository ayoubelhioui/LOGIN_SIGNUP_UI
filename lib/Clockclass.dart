import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'ClockTextes.dart';
import 'dart:async';

class ClockClass extends StatefulWidget {
  const ClockClass({Key? key}) : super(key: key);

  @override
  State<ClockClass> createState() => _ClockClassState();
}

class _ClockClassState extends State<ClockClass> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: StreamBuilder<Object>(
          stream: Stream.periodic(
              const Duration(seconds: 1), (count) => Duration(seconds: count)),
          builder: (context, snapshot) {
            return Center(
              child: ClockText(
                DateFormat('hh:mm:ss').format(
                  DateTime.now(),
                ),
              ),
            );
          }),
    );
  }
}
