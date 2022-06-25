import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
    String valor;

    Jogar({Key? key, required this.valor}) : super(key: key);

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86), ////o 0xff e fixo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[


          Image.asset(widget.valor), // imagem que veio como parâmetro

          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset("img/botao_voltar.png"),
          )
        ],
      ),
    );
  }
}
