import 'package:flutter/material.dart';
import 'package:simple_interest/widget/decoration.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // final principal = TextEditingController();

  // final rate = TextEditingController();

  // final time = TextEditingController();

  double principalx = 0;

  double ratex = 0;

  double timex = 0;

  double total = 0;

  int? p, t, r;

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
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextFormField(
              onChanged: ((value) {
                p = int.tryParse(value);
              }),
              //controller: principal,
              keyboardType: TextInputType.number,
              decoration: borderDecoration.copyWith(
                hintText: 'Enter Principal',
                labelText: 'Principal',
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                r = int.tryParse(value);
              },
              //controller: rate,
              keyboardType: TextInputType.number,
              decoration: borderDecoration.copyWith(
                hintText: 'Enter the Rate',
                labelText: 'Rate',
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                t = int.tryParse(value);
              },
              //controller: time,
              keyboardType: TextInputType.number,
              decoration: borderDecoration.copyWith(
                hintText: 'Enter Time Period',
                labelText: 'Time',
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    total = ((p! * t! * r!) / 100);
                  });
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
    );
  }
}



//simple interest calculator layout make