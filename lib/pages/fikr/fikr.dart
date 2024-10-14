import 'package:flutter/material.dart';

class Fikrmulohaza extends StatefulWidget {
  const Fikrmulohaza({super.key});

  @override
  State<Fikrmulohaza> createState() => _FikrmulohazaState();
}

class _FikrmulohazaState extends State<Fikrmulohaza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fikr mulohaza"),
      ),
      body: Center(
        child: Text("Bu yerda fikr mulohaza boladi"),
      ),
    );
  }
}
