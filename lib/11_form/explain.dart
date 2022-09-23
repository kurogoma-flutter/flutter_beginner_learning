import 'package:flutter/material.dart';

class Task11 extends StatelessWidget {
  const Task11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 11：フォーム'),
      ),
      body: Column(
        children: const [
          ValueTextField(),
        ],
      ),
    );
  }
}

class ValueTextField extends StatefulWidget {
  const ValueTextField({super.key});

  @override
  State<ValueTextField> createState() => _ValueTextFieldState();
}

class _ValueTextFieldState extends State<ValueTextField> {
  String _value = '初期値';

  void changeValue(String value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        // 初期値
        initialValue: _value,
        // 入力値
        keyboardType: TextInputType.text,
        // デザイン
        decoration: const InputDecoration(
          labelText: '値を入力',
          hintText: 'ヒント',
        ),
        // 入力値のバリデーション
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '値を入力してください';
          }
          return null;
        },
      ),
    );
  }
}
