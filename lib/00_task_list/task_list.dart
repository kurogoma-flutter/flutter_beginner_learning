import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題一覧'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Align(
            alignment: Alignment.topCenter,
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: const [
                _TaskButton(
                  label: 'Task 1 \n アプリの土台',
                  routeName: '/task1',
                ),
                _TaskButton(
                  label: 'Task 2 \n 領域',
                  routeName: '/task2',
                ),
                _TaskButton(
                  label: 'Task 3 \n 羅列',
                  routeName: '/task3',
                ),
                _TaskButton(
                  label: 'Task 4 \n スクロール',
                  routeName: '/task4',
                ),
                _TaskButton(
                  label: 'Task 5 \n スタイル',
                  routeName: '/task5',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TaskButton extends StatelessWidget {
  const _TaskButton({
    Key? key,
    required this.label,
    required this.routeName,
  }) : super(key: key);

  final String label;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint(label);
        context.push(routeName);
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        width: 150,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amberAccent,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 1,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            softWrap: true,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
