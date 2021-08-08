import 'package:flutter/material.dart';
import 'package:flutter_vscode/src/pages/contador_page.dart';
//import 'package:flutter_vscode/src/pages/home_page.dart';

//nuestro statelessWidget construye nuestro material app en el cual tiene el home
//que está lanzando nuestro ocntador page
//
class MyApp extends StatelessWidget {
  @override //para sobreescribir el build
  //el metodo build debe retornar un widget
  Widget build(context) {
    //contexte contiene la info del arbol de widget, tiene info de todo

    return MaterialApp(
      debugShowCheckedModeBanner: false, //quita el baner ese de modo depuracion
      home: Center(
        //child: HomePages(),
        child: ContadorPage(),
      ),
    );
  }
}
