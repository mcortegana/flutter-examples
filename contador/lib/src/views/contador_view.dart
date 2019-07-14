import 'package:flutter/material.dart';

class ContadorView extends StatefulWidget {
  @override
  State createState() => _ContadorViewState();
}

class _ContadorViewState extends State<ContadorView> {
  final TextStyle _estiloTexto = new TextStyle(fontSize: 32);
  int _conteo = 0;

  void _incrementarContador() {
    setState(() {
      _conteo++;
    });
  }

  void _decrementarContador() {
    setState(() {
      _conteo--;
    });
  }

  void _reiniciarContador() {
    setState(() {
      _conteo = 0;
    });
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(backgroundColor: Colors.deepPurple,
          child: Icon(Icons.refresh),
          onPressed: _reiniciarContador,),
        Expanded(child: SizedBox(),),
        FloatingActionButton(backgroundColor: Colors.deepPurple,
          child: Icon(Icons.exposure_neg_1),
          onPressed: _decrementarContador,),
        SizedBox(width: 30,),
        FloatingActionButton(backgroundColor: Colors.deepPurple,
          child: Icon(Icons.plus_one),
          onPressed: _incrementarContador,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Número de Taps',
                  style: _estiloTexto,
                ),
                Text(
                  '$_conteo',
                  style: _estiloTexto,
                )
              ],
            )),
        floatingActionButton: _crearBotones()
    );
  }
}
