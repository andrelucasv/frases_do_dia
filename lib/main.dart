import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _frases = [
    "Que os dias bons se tornem rotina, e os ruins se tornem raros.",
    "A disciplina é a mãe do êxito.",
    "Mesmo que algo pareça difícil, nunca desista antes de tentar.",
    "Você é o único que entende as suas dificuldades, por isso motive se a prosseguir.",
    "Cada dificuldade ultrapassada te faz mais forte.",
    "Da mesma forma que a felicidade não dura para sempre, a tristeza também não.",
    "As dores não são eternas, se permita, o seu melhor é o suficiente.",
    "Ser uma pessoa melhor é o objetivo do dia.",
    "Para chegar em lugares maravilhosos, é necessário passar por caminhos difíceis.",
    "O futuro ainda não chegou, seja grato pelo agora.",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
        padding: const EdgeInsets.all(16),
        /*//width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)
                ),
                child: const Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}