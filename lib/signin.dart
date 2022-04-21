import 'package:flutter/material.dart';
import 'package:simple_interest/widget/text_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: Colors.orange,
      body: Column(
        children: [
          const SizedBox(height: 80),
          const Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    const TextFieldContainer(
                      child: TextField(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 40,
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {},
                        child: const Text(
                          'SignIn',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
