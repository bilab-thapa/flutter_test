import 'package:flutter/material.dart';
import 'package:simple_interest/widget/decoration.dart';

class AddTwoNumber extends StatefulWidget {
  const AddTwoNumber({Key? key}) : super(key: key);

  @override
  State<AddTwoNumber> createState() => _AddTwoNumberState();
}

class _AddTwoNumberState extends State<AddTwoNumber> {
  final _globalKey = GlobalKey<FormState>();
  // int? a, b;
  final _first = TextEditingController();
  final _second = TextEditingController();
  int total = 0;

  _calculate() {
    setState(
      () {
        total = (int.parse(_first.text) + int.parse(_second.text));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Adding Two Numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextFormField(
                onChanged: ((value) {
                  // a = int.tryParse(value);
                }),
                controller: _first,
                keyboardType: TextInputType.number,
                decoration: borderDecoration.copyWith(
                  hintText: 'Enter First Number',
                  labelText: 'First',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return ('Fields cant be empty');
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                onChanged: (value) {
                  // b = int.tryParse(value);
                },
                controller: _second,
                keyboardType: TextInputType.number,
                decoration: borderDecoration.copyWith(
                  hintText: 'Enter Second Number',
                  labelText: 'Second',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return ('Fields cant be empty');
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      _calculate();
                    }
                  },
                  child: const Text(
                    'ADD',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green.shade400,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Sum of two numbers  = $total',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



//simple interest calculator layout make