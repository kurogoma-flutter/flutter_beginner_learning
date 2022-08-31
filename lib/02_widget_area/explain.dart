import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // メディアクエリの設定
    final mediaQuery = MediaQuery.of(context);
    // デバイスサイズを取得
    final Size screenSize = mediaQuery.size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 2：領域'),
      ),
      body: Center(
        child: Container(
          width: screenSize.width * 0.8,
          height: screenSize.height * 0.5,
          color: Colors.blueAccent,
          child: Center(
            child: Container(
              width: screenSize.width * 0.8 / 1.5,
              height: screenSize.height * 0.5 / 1.5,
              color: Colors.amber,
              child: Center(
                child: Container(
                  width: screenSize.width * 0.8 / 2.5,
                  height: screenSize.height * 0.5 / 2.5,
                  color: Colors.greenAccent,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
