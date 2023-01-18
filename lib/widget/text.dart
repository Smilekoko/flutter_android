import 'package:flutter/material.dart';

//基本空间 文本
class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
  return  const Center(
      child: Text('基础组件文本', textDirection: TextDirection.ltr),
    );

  }
}
