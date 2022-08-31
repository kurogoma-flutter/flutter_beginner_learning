import 'package:flutter/material.dart';

class Task3 extends StatelessWidget {
  const Task3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 3：ウィジェットの羅列'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              const Text('縦に並べるColumn'),
              Column(
                children: const [
                  _Box(),
                  _Box(),
                  _Box(),
                  _Box(),
                  _Box(),
                ],
              ),
              const Text('横に並べるRow'),
              Row(
                children: const [
                  _Box(),
                  _Box(),
                  _Box(),
                  _Box(),
                  _Box(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Box extends StatelessWidget {
  const _Box({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 50,
      height: 50,
      color: Colors.blueAccent,
    );
  }
}
