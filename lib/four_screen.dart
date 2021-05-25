import 'package:flutter/material.dart';
import 'package:navigator/third_screen.dart';

class FourParameters {
  String nome;
  int idade;

  FourParameters(this.nome, this.idade);
}

class FourPage extends StatefulWidget {
  @override
  _FourPageState createState() => _FourPageState();
}

class _FourPageState extends State<FourPage> {
  @override
  Widget build(BuildContext context) {
    final parameters =
        ModalRoute.of(context).settings.arguments as FourParameters;

    return Scaffold(
      appBar: AppBar(
        title: Text("${parameters.nome}"),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${parameters.idade}'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                  child: Text('Voltar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(
                      context,
                      ModalRoute.withName("/"),
                    );
                  },
                  child: Text('Home'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
