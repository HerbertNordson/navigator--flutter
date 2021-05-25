import 'package:flutter/material.dart';
import 'four_screen.dart';
import 'second_screen.dart';

class ThirdPage extends StatelessWidget {
  final Color cor;

  ThirdPage({this.cor, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 3'),
      ),
      body: SafeArea(
        child: Container(
          color: cor ?? Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  },
                  child: Text('Voltar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final parameters = FourParameters("Herbert", 27);
                    Navigator.popAndPushNamed(
                      context,
                      'four',
                      arguments: parameters,
                    );
                  },
                  child: Text('Página 4'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
