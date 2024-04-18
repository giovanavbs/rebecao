import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"), // imagem de fundo do app
              fit: BoxFit.cover,
            ),
          ),
          child: Column( // column para o layout ficar vertical
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Container(
                  width: 200, 
                  height: 200, 
                  child: Image.asset('assets/images/img1.png', // imagem 1 da Paimon centralizada
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Flexible( // flexible pro container se adequar a quantidade de texto
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10), // radius pra deixar os cantos do container quadrado circulares
                      ),
                      padding: const EdgeInsets.all(10), 
                      child: const Text( 
                        'PAIMON INFORMA: \nLINHA DO TEMPO DOS TRANSPORTES PÚBLICOS DE SÃO PAULO.', // \n pra quebrar linha
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16, 
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: 200, 
                  height: 200, 
                  child: Image.asset('assets/images/img2.png', // imagem 2 da Paimon centralizada
                    fit: BoxFit.cover,
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
