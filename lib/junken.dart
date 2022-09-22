import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const JankenHomePage(),
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => const JankenHomePage(),
        "/result": (BuildContext context) => const JankenResult(),
      },
    );
  }
}

// トップページ
class JankenHomePage extends StatelessWidget {
  const JankenHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // パラメーターの受け取り
    final args = ModalRoute.of(context)!.settings.arguments as ResultArguments?;
    bool isAiko = args?.isAiko ?? false;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // ヘッダーの文字
          Text(
            isAiko == false ? '最初はグー！じゃんけん...' : 'あいこで...',
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 250),
          // 横並びのじゃんけんカード
          Row(
            // Alignment
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // onTapアクションを付与するため
              JankenPanel(args: args, index: 0),
              JankenPanel(args: args, index: 1),
              JankenPanel(args: args, index: 2),
            ],
          ),
        ],
      ),
    );
  }
}

/// ジャンケンパネル全体
class JankenPanel extends StatelessWidget {
  const JankenPanel({Key? key, required this.args, required this.index})
      : super(key: key);

  final ResultArguments? args;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: JankenCard(index: index), // 共通化Widget
      onTap: () => Navigator.pushNamed(
        // Navigator.pushNamedでルーティング指定したページに飛べる
        context, // 必須
        "/result", // ルーティング
        arguments: ScreenArguments(index, args?.winCount ?? 0), // 引数を複数指定
      ),
    );
  }
}

// じゃんけんカード
class JankenCard extends StatelessWidget {
  const JankenCard({Key? key, required this.index}) : super(key: key);

  //　引数として受け取る
  final int index;

  // 色の分岐
  _cardColor() {
    switch (index) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.orange;
      case 2:
        return Colors.blueAccent;
    }
  }

  // 文字の分岐
  _cardText() {
    switch (index) {
      case 0:
        return 'グー';
      case 1:
        return 'チョキ';
      case 2:
        return 'パー';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: _cardColor(), // 分岐で設定
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 1.0,
            blurRadius: 3.0,
            offset: Offset(4, 8),
          ),
        ],
      ),
      child: Center(
        child: Text(
          _cardText(), // 分岐で設定
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 28,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class RetryCard extends StatelessWidget {
  const RetryCard({Key? key, required this.content}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.green,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 1.0,
            blurRadius: 3.0,
            offset: Offset(4, 8),
          ),
        ],
      ),
      child: Center(
        child: Text(
          content,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 28,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

//　結果ページ
class JankenResult extends StatelessWidget {
  const JankenResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 連勝記録の受け取り
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    // ジャンケン用にランダム数字を生成
    _randomIndex() {
      var rand = math.Random();
      int num = rand.nextInt(3); //0,1,2がランダム生成される
      return num;
    }

    int index = args.index; // 選択したカードのインデックス
    int winCount = args.winCount; // 連勝記録
    int enemyIndex = _randomIndex(); // ランダム生成した相手のカード
    bool isAiko = false; // 一旦リセットする

    _judge() {
      switch (index) {
        case 0:
          switch (enemyIndex) {
            case 0:
              isAiko = true;
              return 'あいこ';
            case 1:
              winCount += 1;
              return 'あなたの勝ち';
            case 2:
              winCount = 0;
              return 'あなたの負け';
            default:
              return 'エラー';
          }
        case 1:
          switch (enemyIndex) {
            case 0:
              winCount = 0;
              return 'あなたの負け';
            case 1:
              isAiko = true;
              return 'あいこ';
            case 2:
              winCount += 1;
              return 'あなたの勝ち';
            default:
              return 'エラー';
          }
        case 2:
          switch (enemyIndex) {
            case 0:
              winCount += 1;
              return 'あなたの勝ち';
            case 1:
              winCount = 0;
              return 'あなたの負け';
            case 2:
              isAiko = true;
              return 'あいこ';
            default:
              return 'エラー';
          }
        default:
          return 'エラー';
      }
    }

    // メディアクエリ
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 100),
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _judge(),
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            Column(
              children: [
                const Text(
                  'あいて',
                  style: TextStyle(fontSize: 28),
                ),
                JankenCard(index: enemyIndex),
              ],
            ),
            Column(
              children: [
                const Text(
                  'じぶん',
                  style: TextStyle(fontSize: 28),
                ),
                JankenCard(index: index),
              ],
            ),
            GestureDetector(
              child: RetryCard(content: isAiko == true ? 'あいこ' : 'もう一回遊ぶ!'),
              onTap: () => Navigator.pushNamed(
                context,
                "/home",
                arguments: ResultArguments(winCount, isAiko),
              ),
            ),
            Text(
              '連勝$winCount回',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

// Navigatorで受け渡す値
class ScreenArguments {
  final int index;
  final int winCount;

  ScreenArguments(this.index, this.winCount);
}

// あいこかどうか及びじゃんけんの連勝記録を返す
class ResultArguments {
  final int winCount;
  final bool isAiko;

  ResultArguments(this.winCount, this.isAiko);
}
