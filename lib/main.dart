import 'dart:async';

import 'package:flutter/material.dart';
import 'package:game_toy/pages/morpion.dart';
import 'package:game_toy/pages/taquin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Game toy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game Toy"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
                onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Taquin()))
                    },
                child: const Text("Taquin")),
            TextButton(
                onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const morpion()))
                    },
                child: const Text("Morpion"))
          ],
        ),
      ),
    );
  }
}
