import 'package:flutter/material.dart';

class ResultadoJogo extends StatefulWidget {
  late int valor;
  ResultadoJogo(this.valor);

  @override
  State<ResultadoJogo> createState() => _ResultadoJogoState();
}

class _ResultadoJogoState extends State<ResultadoJogo> {

  var _caraCoroa = const AssetImage("");
  void jogar(){
    if(widget.valor == 1){
      _caraCoroa = const AssetImage("images/moeda_cara.png");
    }else{
      _caraCoroa = const AssetImage("images/moeda_coroa.png");
    }
  }

  @override
  Widget build(BuildContext context) {
    jogar();
    return Scaffold(
      backgroundColor: Color.fromRGBO(97, 189, 134, 1),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Image(
                image: _caraCoroa,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () {Navigator.pop(context);},
                child: Image.asset("images/botao_voltar.png"),
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
