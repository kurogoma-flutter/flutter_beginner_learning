import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  const Task4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 4：スクロール'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  color: Colors.blueAccent,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  color: Colors.blueAccent,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  color: Colors.blueAccent,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  color: Colors.greenAccent,
                );
              },
            ),
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.redAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.redAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.redAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.redAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.redAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.redAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.redAccent,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.purpleAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.purpleAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.purpleAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.purpleAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.purpleAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.purpleAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.purpleAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.purpleAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.purpleAccent,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    color: Colors.purpleAccent,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
