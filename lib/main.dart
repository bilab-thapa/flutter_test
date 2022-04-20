import 'package:flutter/material.dart';
import 'package:simple_interest/add.dart';
import 'package:simple_interest/list.dart';
import 'package:simple_interest/output.dart';
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
        '/arithmetic': (context) => const AllArithmetic(),
        '/output': (context) => Output(),
      },
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'HomeScreen',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            const Text(
              'Working Pages',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            const SizedBox(height: 40),
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
                style: ElevatedButton.styleFrom(primary: Colors.redAccent),
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
            const SizedBox(height: 10),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                child: const Text(
                  'Arthimetic',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllArithmetic(),
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
