import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 2'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    'third',
                  );
                },
                child: Text('Página 3'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    'four',
                  );
                },
                child: Text('Página 4'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
