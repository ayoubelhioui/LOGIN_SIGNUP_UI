import 'package:flutter/material.dart';
import 'ClockTextes.dart';

class ClockClass extends StatefulWidget {
  const ClockClass({Key? key}) : super(key: key);

  @override
  State<ClockClass> createState() => _ClockClassState();
}

class _ClockClassState extends State<ClockClass> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        // padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClockText(
              '14'
            ),
            ClockText(
              ':',
            ),
            ClockText(
            DateTime.now().minute.toString(),
          ),
          ClockText(
            ':',
          ),
          ClockText(
            DateTime.now().second.toString(),
          ),
          ],
        ),
      ),
    );
  }
}
