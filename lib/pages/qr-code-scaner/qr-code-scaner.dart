import 'package:flutter/material.dart';

class Scaner extends StatefulWidget {
  final String result;

  const Scaner({Key? key, required this.result}) : super(key: key);

  @override
  State<Scaner> createState() => _ScanerState();
}

class _ScanerState extends State<Scaner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaner"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Text(widget.result),
          ],
        ),
      ),
    );
  }
}
