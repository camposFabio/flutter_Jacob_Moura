import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:myapp/increment/increment-controller.dart';
import 'package:myapp/terceira-tela/terceira-tela.dart';
import 'package:flutter/material.dart';

class SegundaTelaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IncrementController bloc =
        BlocProvider.of<IncrementController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Tela"),
      ),
      body: StreamBuilder(
        stream: bloc.outCounter,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Center(
            child: RaisedButton(
              child: Text("Valor do counter: ${snapshot.data}"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TerceiraTelaWidget()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
