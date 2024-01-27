import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

final List<String> perguntas = [
  'Qual é a sua cor favorita?',
  'Qual é o seu animal favorito?',
];

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: () {},
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}
