import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
//Plantilla, cambiar el contenido del menu y maandarla a llamar siempre
class _MenuProvider{
  List<dynamic> options = [];

  _MenuProvider(){
    //loadData();
  }

  // loadData(){
  //   rootBundle.loadString('data/menu_opciones.json').then((data){
  //     //print(data); //Tomando como String, se debe convertir a Mapa
  //     Map dataMap = json.decode(data);
  //     options = dataMap['rutas'];
  //     // print(dataMap);
  //     // print(dataMap['nombreApp']);
  //     // print(dataMap['rutas']);
  // });
  // }


Future<List<dynamic>> loadData() async{
  final respuesta = await rootBundle.loadString('data/menu_opciones.json');
  Map dataMap = json.decode(respuesta);
  print(dataMap['rutas']);
  options = dataMap['rutas'];
  return options;
  }
}  

  final menuProvider = _MenuProvider();
