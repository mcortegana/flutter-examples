import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  final TextStyle estiloTexto = new TextStyle(fontSize: 32);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de Clicks',
                  style: estiloTexto,
            ),
            Text('0',
                  style: estiloTexto,
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
