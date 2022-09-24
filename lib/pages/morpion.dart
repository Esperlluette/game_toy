import 'package:flutter/material.dart';

import '../games/morpion_game.dart';

class morpion extends StatefulWidget {
  const morpion({super.key});

  @override
  State<morpion> createState() => _morpionState();
}

class _morpionState extends State<morpion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Jeu du morpion"),
        ),
        body: const Center(
          child: morpion_game(),
        ));
  }
}
