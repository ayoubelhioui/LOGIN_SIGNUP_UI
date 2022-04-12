import 'package:flutter/material.dart';

class Checkboxclass extends StatefulWidget {
  const Checkboxclass({Key? key}) : super(key: key);

  @override
  State<Checkboxclass> createState() => _CheckboxclassState();
}

class _CheckboxclassState extends State<Checkboxclass> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: const Color.fromRGBO(43, 142, 148, 1),
      value: value,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onChanged: (newVal) {
        setState(() {
          value = newVal;
        });
      },
    );
  }
}
