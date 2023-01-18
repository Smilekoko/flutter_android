import 'package:flutter/material.dart';

//带状态的控件
//Widget是临时对象，用于构造应用程序当前状态的表示。
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

//State对象在调用build()之前是持久的,用于记住状态
//可以build()函数里组合其他控件
class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    //数据改变体现在界面上必须调用 setState()
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _increment,
          child: const Text('Increment'),
        ),
        const SizedBox(width: 16),
        Text('Count: $_counter'),
      ],
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    ),
  );
}
