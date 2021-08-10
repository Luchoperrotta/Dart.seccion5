import 'package:flutter/material.dart';

//recordar que el statefulwidget se compone de dos clases, esa de abajo es la que extiende de
//la statefulwidget
class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

//el guion  bajo hace que sea privado
class _ContadorPageState extends State<ContadorPage> {
  final _tamanoTexto = new TextStyle(fontSize: 30.0);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    //el scaffold seria el box donde voy a poner todos mis widget
    // y adentro puse un appbar, una columna de widget que serian los textos y
    //despues hago la fila (con el row) de botones abajo llamando al metodo de crear botones
    return Scaffold(
        appBar: AppBar(
          title: Text("app"),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //<widget> me genera la lista de wiget que estan en columnas como dice arriba
            Text("nro de clicks:", style: _tamanoTexto),
            Text(
              _conteo
                  .toString(), //para convertir a string tambien podia hacer "$conteo"
              style: _tamanoTexto,
            ),
          ],
        )),
        floatingActionButton: _crearBotones()
        // para asignar la posicion al boton
        //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        );
  }

  Widget _crearBotones() {
    //el Row me retorna lo que seria una fila y en este caso hago una fila de botones
    return Row(
      mainAxisAlignment: MainAxisAlignment
          .end, //dice que van al final de la fila todos los botones
      //hago una lista de widget en este caso voy a tener la lista de botones
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        //BOTON 1
        FloatingActionButton(
            //le digo a mi boto que cuando lo presiono me ejetute la fx reset
            child: Icon(Icons.exposure_zero),
            onPressed: _reset), //icons.expose_zero = simbolo
        Expanded(child: SizedBox()),
        //BOTON 2
        //le digo a mi boto que cuando lo presiono me ejetute la fx sustraer
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: _sustraer), //icons.remove = simbolo
        SizedBox(width: 10.0),
        //BOTON 3
        //le digo a mi boto que cuando lo presiono me ejetute la fx agregar
        FloatingActionButton(
            child: Icon(Icons.add), onPressed: _agregar), //icons.add = simbolo
      ],
    );
  }

  //metdos ---------------------------
  void _agregar() {
    setState(() {
      _conteo++;
    });
  }

  void _sustraer() {
    setState(() {
      _conteo--;
    });
  }

  void _reset() {
    setState(() {
      _conteo = 0;
    });
  }
}
