import 'package:flutter/material.dart';
import 'package:notapp/notpae.dart';

void main() {
  runApp(const Notapp());
}
class Notapp extends StatelessWidget {
  const Notapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: notpage(),
    );
  }
}
