import 'package:flutter/material.dart';

class Alarm extends StatefulWidget {
  const Alarm({super.key});

  @override
  State<Alarm> createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Budulnik"),
      ),
      body: Center(
        child: Text("Budulnik bo'ladi"),
      ),
    );
  }
}


