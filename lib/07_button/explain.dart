import 'package:flutter/material.dart';

class Task7 extends StatelessWidget {
  const Task7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Task 7：ボタン'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  debugPrint('タップテスト');
                },
                child: const Text('ボタン'),
              ),
              ElevatedButton(
                onPressed: () {
                  debugPrint('タップテスト');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'ボタン',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('ボタン'),
              ),
              IconButton(
                onPressed: () async {
                  debugPrint('タップテスト');
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              IconButton(
                onPressed: () async {
                  debugPrint('タップテスト');
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 50,
                ),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'タップ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
