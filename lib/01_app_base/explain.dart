import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown, // bodyの背景色を設定
      appBar: AppBar(
        title: const Text('アプリの土台'),
        backgroundColor: Colors.amber, // AppBarの背景色を設定
      ),
      body: const Center(
        child: Text('HELLO WORLD !!'),
      ),
    );
  }
}
