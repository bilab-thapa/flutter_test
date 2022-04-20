import 'package:flutter/material.dart';
import 'package:simple_interest/widget/decoration.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final _globalKey = GlobalKey<FormState>();
  double total = 0;
  final _p = TextEditingController();
  final _t = TextEditingController();
  final _r = TextEditingController();
  _calculate() {
    setState(
      () {
        total = (double.parse(_p.text) *
                double.parse(_t.text) *
                double.parse(_r.text)) /
            100;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: const Text('Simple Interest Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextFormField(
                controller: _p,
                onChanged: ((value) {}),
                keyboardType: TextInputType.number,
                decoration: borderDecoration.copyWith(
                  hintText: 'Enter Principal',
                  labelText: 'Principal',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _r,
                onChanged: (value) {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return ('Fields can not be empty');
                  }
                },
                keyboardType: TextInputType.number,
                decoration: borderDecoration.copyWith(
                  hintText: 'Enter the Rate',
                  labelText: 'Rate',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _t,
                onChanged: (value) {},
                keyboardType: TextInputType.number,
                decoration: borderDecoration.copyWith(
                  hintText: 'Enter Time Period',
                  labelText: 'Time',
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      _calculate();
                    }
                  },
                  child: const Text('Calculate'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Simple Interest  = $total',
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