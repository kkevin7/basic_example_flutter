import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contador'),
          centerTitle: true,
          elevation: 15.0,
          primary: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de Taps:',
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: _estiloTexto,
            ),
          ],
        )),
        floatingActionButton: _crearBotones()
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
  }

  Widget _crearBotones() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(width: 30.0),
          FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: _reset,
          ),
          Expanded(
            child: SizedBox(),
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: _sustrarer,
          ),
          SizedBox(width: 5.0),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _agregar,
          ),
        ],
      );

      void _agregar(){
        setState(() {
          _conteo++;
        });
      }

      void _sustrarer(){
        setState(() {
          _conteo--;
        });
      }

      void _reset(){
        setState(() {
          _conteo = 0;
        });
      }
}
