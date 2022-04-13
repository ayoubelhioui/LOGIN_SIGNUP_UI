import 'package:flutter/material.dart';

class ClockText extends StatefulWidget {
  ClockText(this._data, {Key? key}) : super(key: key);
  final String _data;
  @override
  State<ClockText> createState() => _ClockTextState();
}

class _ClockTextState extends State<ClockText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget._data,
      style: const TextStyle(
        fontSize: 70,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
