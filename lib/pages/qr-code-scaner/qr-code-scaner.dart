import 'package:flutter/material.dart';

class Scaner extends StatefulWidget {
  const Scaner({super.key});

  @override
  State<Scaner> createState() => _ScanerState();
}

class _ScanerState extends State<Scaner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaner"),
      ),
      body: Center(
        child: Text("Scaner"),
      ),
    );
  }
}
