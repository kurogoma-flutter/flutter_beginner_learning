import 'package:flutter/material.dart';

class Task6 extends StatelessWidget {
  const Task6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: const Text('Task 6：画像'),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/sample.png'),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error);
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const CircleAvatar(
                  maxRadius: 75,
                  backgroundImage: NetworkImage(
                    'https://user-images.githubusercontent.com/67848399/187871137-5bcf7fd7-b917-4f85-8095-18df6e75bbb6.png',
                  ),
                ),
                const SizedBox(height: 30),
                const CircleAvatar(
                  maxRadius: 75,
                  backgroundImage: NetworkImage(
                    'https://user-images.githubusercontent.com/67848399/187871137-5bcf7fd7-b917-4f85-8095-18df6e75bbb6.png',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
