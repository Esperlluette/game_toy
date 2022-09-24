import 'package:flutter/material.dart';


import '../games/taquin_game.dart';

class Taquin extends StatefulWidget {
  const Taquin({super.key});

  @override
  State<Taquin> createState() => _TaquinState();
}

class _TaquinState extends State<Taquin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jeu du Taquin"),
      
      ),body: const Center(
        child: taquin_game(),
      ),
    );
  }
}