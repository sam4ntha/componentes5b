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
    print(menuProvider.options);
    return ListView(
      children: 
        _listaItems(),
    );
  }

  List<Widget> _listaItems(){
    return const [
          ListTile(
            title: Text('Título'),
            subtitle: Text('Este es un subtítulo'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ListTile(
            title: Text('Título'),
            subtitle: Text('Este es un subtítulo'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ];
     
  }

}