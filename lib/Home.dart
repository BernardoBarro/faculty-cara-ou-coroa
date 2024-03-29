import 'dart:math';

import 'package:cara_coroa/ResultadoJogo.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _jogarMoeda() {
    var numeroSorteado = Random().nextInt(2);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultadoJogo(numeroSorteado)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(97, 189, 134, 1),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset("images/logoC.png"),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: GestureDetector(
                onTap: _jogarMoeda,
                child: Image.asset("images/botao_jogar.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(),
            )
          ],
        ),
      ),
    );
  }
}
