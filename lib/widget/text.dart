import 'package:flutter/material.dart';

//基本空间 文本
class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('基础组件文本', textDirection: TextDirection.ltr),
    );
  }
}

void main() {
  runApp(
    // const Center(
    //   child: Text(
    //     'Hello, world!',
    //     textDirection: TextDirection.ltr,
    //     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.cyan),
    //   ),

    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello, world!',
              textDirection: TextDirection.ltr,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.cyan)),
        ),
      ),
    ),
  );
}
