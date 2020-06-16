import 'package:flutter/material.dart';
import 'package:myapp/segunda-tela/segunda-tela.dart';

class TerceiraTelaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terceira Tela"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.navigate_before),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SegundaTelaWidget()),
              );
            },
          )
        ],
      ),
    );
  }
}
