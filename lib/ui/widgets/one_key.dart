import 'package:flutter/material.dart';

class OneKey extends StatelessWidget {
  const OneKey({Key? key, required this.number, required this.callback})
      : super(key: key);

  final int number;
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    // te le mides a mejorar este key??
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(11, 8, 11, 8),
        child: MaterialButton(
            key: Key(number.toString()),
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            onPressed: () {
              callback(number);
            },
            child: Text(
              number.toString(),
              style: const TextStyle(
                  fontSize: 28.0,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
