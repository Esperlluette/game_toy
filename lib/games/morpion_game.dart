import 'dart:developer';

import 'package:flutter/material.dart';

class morpion_game extends StatefulWidget {
  const morpion_game({super.key});

  @override
  State<morpion_game> createState() => _morpion_gameState();
}

class _morpion_gameState extends State<morpion_game> {
  int _counter = 1;

  void incrementCounter() {
    if (_counter < 9) {
      _counter++;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('tour : $_counter'),
        Row(
          children: [
            TextButton(
                onPressed: () {
                  incrementCounter();
                },
                child: const Text("data")),
            TextButton(onPressed: () {}, child: const Text("data")),
            TextButton(onPressed: () {}, child: const Text("data")),
          ],
        ),
        Row(
          children: [
            TextButton(onPressed: () {}, child: const Text("data")),
            TextButton(onPressed: () {}, child: const Text("data")),
            TextButton(onPressed: () {}, child: const Text("data")),
          ],
        ),
        Row(
          children: [
            TextButton(onPressed: () {}, child: const Text("data")),
            TextButton(onPressed: () {}, child: const Text("data")),
            TextButton(onPressed: () {}, child: const Text("data")),
          ],
        )
      ],
    );
  }
}
