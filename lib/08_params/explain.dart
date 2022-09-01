import 'package:flutter/material.dart';

class Task8 extends StatelessWidget {
  const Task8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 8：ウィジェットの引数'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
              width: double.infinity,
              child: Text(
                'テキストスタイル',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 33, 149, 231),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('ボックススタイル'),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 33, 149, 231),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(2, 5),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const CircleAvatar(
              maxRadius: 40,
              backgroundColor: Colors.amber,
              child: Text(
                'A',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
