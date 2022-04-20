import 'package:flutter/material.dart';

class Output extends StatefulWidget {
  Output({Key? key}) : super(key: key);

  @override
  State<Output> createState() => _OutputState();
}

class _OutputState extends State<Output> {
  var args;
  @override
  Widget build(BuildContext context) {
    final Map result = ModalRoute.of(context)?.settings.arguments as Map;
    if (result != null) {
      args = result['result'];
    }
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text(
          'The Final Result is $args',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
