import 'package:flutter/material.dart';

class Task8 extends StatelessWidget {
  const Task8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 8：ウィジェットの引数'),
      ),
      body: const SingleChildScrollView(
        child: _ColumnWidget(),
      ),
    );
  }
}

class _ColumnWidget extends StatelessWidget {
  const _ColumnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _TitleLabel(title: 'タイトル1'),
        _TitleLabel(title: 'タイトル2'),
        _TitleLabel(title: 'タイトル3'),
        _TitleLabel(),
        _StateFulText(count: 0),
      ],
    );
  }
}

class _TitleLabel extends StatelessWidget {
  const _TitleLabel({
    this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? 'タイトルがありません',
      style: TextStyle(
        fontSize: title == null ? 20 : 28,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _StateFulText extends StatefulWidget {
  const _StateFulText({required this.count});

  final int count;

  @override
  State<_StateFulText> createState() => __StateFulTextState();
}

class __StateFulTextState extends State<_StateFulText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.count.toString());
  }
}
