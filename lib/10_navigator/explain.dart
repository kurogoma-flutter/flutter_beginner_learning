import 'package:flutter/material.dart';
import 'package:flutter_beginner_learning/01_app_base/explain.dart';

class Task10 extends StatelessWidget {
  const Task10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 10：画面遷移'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Task1(),
                  ),
                );
              },
              child: const Text('課題1'),
            )
          ],
        ),
      ),
    );
  }
}
