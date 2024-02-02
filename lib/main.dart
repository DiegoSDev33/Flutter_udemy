import 'package:flutter/material.dart';
import './questao.dart';
main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }


final List<String> perguntas = [
  'Qual é a sua cor favorita?',
  'Qual é o seu animal favorito?',
];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),  
            ElevatedButton(
              onPressed: _responder,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
