import 'package:caracoroa/Jogar.dart';
import "package:flutter/material.dart";
import 'dart:math';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  //método
  void _GetTelaJogar() {
    var itens = ["img/moeda_cara.png", "img/moeda_coroa.png"];
    var n = Random().nextInt(itens.length);

    ///pega um N° aleatório com base no array passado..
    var vResultado = itens[n].toString();

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  Jogar(valor: vResultado)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86), ////o 0xff e fixo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset("img/logo.png"),
          GestureDetector(
            onTap: _GetTelaJogar,
            child: Image.asset("img/botao_jogar.png"),
          )
        ],
      ),
    );
  }
}
