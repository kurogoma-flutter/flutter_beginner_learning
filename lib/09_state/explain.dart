import 'package:flutter/material.dart';

class Task9 extends StatefulWidget {
  const Task9({super.key});

  @override
  State<Task9> createState() => _Task9State();
}

class _Task9State extends State<Task9> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 9 : State'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _incrementCounter();
                    },
                    child: const Text('+1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _decrementCounter();
                    },
                    child: const Text('-1'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
