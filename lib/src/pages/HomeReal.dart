import 'package:componentes/src/providers/menu.dart';
import 'package:flutter/material.dart';

class HomeReal extends StatelessWidget {

  List<int> _numeros = [1,2,3,4,5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text('Componentes'),
        centerTitle: true,
      ),
      body: _lista()
    );
  }

  Widget _lista(){

    return FutureBuilder(
      future: menu.cargarData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot ){
        
        return ListView(
          children: _listaItems(snapshot.data),
        );

      },
    );

  }

  List<Widget> _listaItems(List<dynamic> opciones)
  {

    return opciones.map((i){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(i['texto'], ),
            leading: Icon(Icons.account_circle, color: Colors.black26,),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black26,),
            onTap: (){},
            
          ),
          Divider(height: 5.0, color: Colors.black26, thickness: 2.0,)
        ],
      );
    }).toList();

  }
}