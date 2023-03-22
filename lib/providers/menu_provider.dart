import 'package:flutter/services.dart' show rootBundle;
//Platilla, cambiar el contenido del menu y maandarla a llamar siempre
class _MenuProvider{
  List<dynamic> options = [];

  _MenuProvider(){
    loadData();
  }

  loadData(){
    rootBundle.loadString('data/menu_opciones.json').then((data){
      print(data);
  });
  }
}

  final menuProvider = _MenuProvider();
