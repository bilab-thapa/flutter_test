import 'package:flutter/material.dart';
import 'package:simple_interest/widget/decoration.dart';

class AllArithmetic extends StatefulWidget {
  const AllArithmetic({Key? key}) : super(key: key);

  @override
  State<AllArithmetic> createState() => _AllArithmeticState();
}

class _AllArithmeticState extends State<AllArithmetic> {
  final _globalKey = GlobalKey<FormState>();

  final _firstController = TextEditingController();
  final _secondController = TextEditingController();

  String? group = 'myGroup';
  dynamic result = 0;

  _calculate() {
    setState(() {
      if (group == 'add') {
        setState(() {
          result = int.parse(_firstController.text) +
              int.parse(_secondController.text);
        });
      } else if (group == 'sub') {
        setState(() {
          result = int.parse(_firstController.text) -
              int.parse(_secondController.text);
        });
      } else if (group == 'div') {
        setState(() {
          result = double.parse(_firstController.text) /
              double.parse(_secondController.text);
        });
      } else if (group == 'multiply') {
        setState(() {
          result = int.parse(_firstController.text) *
              int.parse(_secondController.text);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text('Adding Two Numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Form(
            key: _globalKey,
            child: Column(
              children: [
                const SizedBox(height: 20),
                TextFormField(
                  onChanged: ((value) {
                    // a = int.tryParse(value);
                  }),
                  controller: _firstController,
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
                  controller: _secondController,
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
                ListTile(
                  title: const Text('Add'),
                  leading: Radio(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.deepOrange),
                    value: 'add',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Substract'),
                  leading: Radio(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.deepOrange),
                    value: 'sub',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Multiplication'),
                  leading: Radio(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.deepOrange),
                    value: 'multiply',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Divide'),
                  leading: Radio(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.deepOrange),
                    value: 'div',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_globalKey.currentState!.validate()) {
                        _calculate();
                      }
                      Navigator.pushNamed(context, '/output',
                          arguments: {'result': result});
                    },
                    child: const Text(
                      'Result',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
