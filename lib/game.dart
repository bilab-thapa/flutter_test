import 'dart:math';

import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  Color colorState = Colors.cyan;
  int userScore = 0;
  int compScore = 0;
  String message = '';
  //var random = Random();
  String randomNumber1 = Random().nextInt(100).toString();
  String randomNumber2 = Random().nextInt(100).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text('Game Bar'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'Player Get Ready',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Text(
              'Select the higher number',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.purple),
                child: Text(
                  randomNumber1,
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  if (int.parse(randomNumber1) > int.parse(randomNumber2)) {
                    userScore++;
                    if (userScore == 10) {
                      setState(() {
                        message = 'You Win';
                        colorState = Colors.green;
                      });
                    } else if (compScore == 10) {
                      setState(() {
                        message = 'You Lose';
                        colorState = Colors.red;
                      });
                    }
                    ;
                  } else {
                    compScore++;
                    if (userScore == 10) {
                      setState(() {
                        message = 'You Win';
                        colorState = Colors.green;
                      });
                    } else if (compScore == 10) {
                      setState(() {
                        message = 'You Lose';
                        colorState = Colors.red;
                      });
                    }
                  }
                  setState(() {
                    randomNumber1 = Random().nextInt(100).toString();
                    randomNumber2 = Random().nextInt(100).toString();
                    if (int.parse(randomNumber1) == int.parse(randomNumber2)) {
                      randomNumber1 = Random().nextInt(100).toString();
                      randomNumber2 = Random().nextInt(100).toString();
                    }
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.purple),
                child: Text(
                  randomNumber2,
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  if (int.parse(randomNumber1) < int.parse(randomNumber2)) {
                    userScore++;
                    if (userScore == 10) {
                      setState(() {
                        message = 'You Win';
                        colorState = Colors.green;
                      });
                    } else if (compScore == 10) {
                      setState(() {
                        message = 'You Lose';
                        colorState = Colors.red;
                      });
                    }
                    ;
                  } else {
                    compScore++;
                    if (userScore == 10) {
                      setState(() {
                        message = 'You Win';
                        colorState = Colors.green;
                      });
                    } else if (compScore == 10) {
                      setState(() {
                        message = 'You Lose';
                        colorState = Colors.red;
                      });
                    }
                  }
                  setState(() {
                    randomNumber2 = Random().nextInt(100).toString();
                    randomNumber1 = Random().nextInt(100).toString();
                    if (int.parse(randomNumber1) == int.parse(randomNumber2)) {
                      randomNumber1 = Random().nextInt(100).toString();
                      randomNumber2 = Random().nextInt(100).toString();
                    }
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 100,
              width: double.infinity,
              color: colorState,
              child: Center(
                child: Text(
                  message,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
