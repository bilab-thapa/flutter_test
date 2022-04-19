import 'package:flutter/material.dart';
import 'package:simple_interest/add.dart';
import 'package:simple_interest/signin.dart';
import 'package:simple_interest/simple_interest.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/add': (context) => const AddTwoNumber(),
        '/simple_interest': (context) => const Calculator(),
        '/signin': (context) => const SignIn(),
      },
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.yellowAccent,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'HomeScreen',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddTwoNumber()),
                  );
                },
                child: const Text(
                  'Addition of two number',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                child: const Text(
                  'Simple Interest Calculator',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Calculator(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                child: const Text(
                  'Sign In Page',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignIn(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}