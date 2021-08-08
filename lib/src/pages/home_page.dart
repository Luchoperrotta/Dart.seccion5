import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  final tamanoTexto = new TextStyle(fontSize: 30.0);

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("nro de clicks:", style: tamanoTexto),
          Text(
            conteo
                .toString(), //para convertir a string tambien podia hacer "$conteo"
            style: tamanoTexto,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("hola paa");
          // aca pondria la logica para que me sume cuando aprieto el mas
          // todo pero como empecé haciendo todo
          // en StatelessWidget las cosas aca dice que no se pueden cambiar por eso
          // tengo que hacerlo en StatefulWidget
        },
      ),
      // para asignar la posicion al boton
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
