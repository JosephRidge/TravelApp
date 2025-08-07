import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(// positional widget 
      child: Text("Hellow World "),
    );
  }
}
