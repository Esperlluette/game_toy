import 'dart:developer';

import 'package:flutter/material.dart';

class morpion_game extends StatefulWidget {
  const morpion_game({super.key});

  @override
  State<morpion_game> createState() => _morpion_gameState();
}

class _morpion_gameState extends State<morpion_game> {
  int _counter = 1;

  List<List<String>> _listTextButton= [["","","","","","","","",""]];

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
    List<String> keyRange = generateKey();

    GridView view = GridView.count(
      crossAxisCount: 3,
      padding: const EdgeInsets.all(10),
      children: [
        Container(
          width: 60,
        ),Text("Tour : $_counter"),Container(
          width: 60,
        ),
        for (var key in keyRange) ...[
          TextButton(
            key: Key(key),
            onPressed: () => {tour(key)},
            //Ne fonctionne pas 
            //je veux assigner une valeur du tableau _listTextButton au bouton qui lui correspond
            child: Text(_listTextButton[int.parse(key)].toString()),
          )
        ]
      ],
    );

    return view;
  }

  List<String> generateKey() {
    List<String> list = [];
    for (var i = 0; i < 9; i++) {
      list.add(i.toString());
    }

    return list;
  }

  void tour(String key) {
    changeText();
    incrementCounter();
  }

  void changeText() {

  }

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
    return Center(child: plateauBuilder() );
  }
}
