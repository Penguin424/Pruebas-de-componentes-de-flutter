

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final List<int> opciones = [1,2,3,4,5]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      body: ListView(
        children: _crearItemsCorto()
      ),
    );
  }

  List<Widget> _crearItems()
  {

    List<Widget>  lista = new List<Widget>();

    for (var i in opciones) 
    {

      final temWidget = ListTile(title: Text('$i'));
      lista..add(temWidget) 
           ..add(Divider(color: Colors.blueGrey, height: 5.0, thickness: 2.0,));
    }

    return lista;
  }

  List<Widget> _crearItemsCorto()
  {
    var widgets = opciones.map((i){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$i!'),
            subtitle: Text('Lo que sea'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(color: Colors.black26, thickness: 2.0,),
        ],
      );

    }).toList();

    return widgets;
  }
}

