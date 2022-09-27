import 'dart:developer';

import 'package:flutter/material.dart';

class morpion_game extends StatefulWidget {
  const morpion_game({super.key});

  @override
  State<morpion_game> createState() => _morpion_gameState();
}

class _morpion_gameState extends State<morpion_game> {
  int _counter = 1;

  final TextStyle _textStyle = const TextStyle(fontSize: 40);
  final List<List<int>> _condition = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 6],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ];

  Widget plateauBuilder() {
    Column plateau = Column(
      children: [Text("Tour : $_counter")],
    );

    List<String> keyRange = generateKey();

    // for (var key in keyRange) {
    //   plateau.children.add(
    //     Row(
    //       children: [],
    //     )
    //   );
    // }
    for (var i = 1; i <= 3; i++) {
      List<String> keyRange = generateKey();
      plateau.children.add(Row(
        children: [
          for (int j = 1; j <= 3; j++) ...[
            TextButton(
                key: Key(keyRange[i + j]),
                onPressed: () => {tour(keyRange[i + j])},
                child: Text("data"))
          ]
        ],
      ));
    }

    return plateau;
  }

  List<String> generateKey() {
    List<String> list = [];
    for (var i = 0; i < 9; i++) {
      list.add(i.toString());
    }

    return list;
  }

  void tour(String key) {
    log(key);
    changeText();
    incrementCounter();
  }

  void changeText() {}

  String hasWin() {
    return 'null';
  }

  void incrementCounter() {
    if (_counter < 9) {
      _counter++;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: plateauBuilder());
  }
}
