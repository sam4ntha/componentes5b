import 'package:componentes5b/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes 5B'),
      ),
      body: _lista(),
      );
  }

  Widget _lista() {
    // print(menuProvider.options);
    // menuProvider.loadData().then((options){
    // print(options);
    // });
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){ //Ultima accion con datos en el futuro
        return ListView(
           children: _listaItems(snapshot.data as List<dynamic>, context), //Convertirlo a una lista
        );
      } ); 
    
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context){
    // return const [
    //       ListTile(
    //         title: Text('Título'),
    //         subtitle: Text('Este es un subtítulo'),
    //         leading: Icon(Icons.accessibility),
    //         trailing: Icon(Icons.keyboard_arrow_right),
    //       ),
    //     ListTile(
    //         title: Text('Título'),
    //         subtitle: Text('Este es un subtítulo'),
    //         leading: Icon(Icons.accessibility),
    //         trailing: Icon(Icons.keyboard_arrow_right),
    //       ),
    //     ];
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final item = ListTile(
        title: Text(opt['texto']),
        subtitle: Text(opt['texto2']),
        leading: const Icon(Icons.accessibility),
        trailing: const Icon(Icons.keyboard_arrow_right),
        onTap: (){},
      );
      opciones..add(item)..add(const Divider());
    });
    return opciones;
  }
}