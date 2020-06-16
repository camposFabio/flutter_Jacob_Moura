import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'home_bloc.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeBloc bloc = BlocProvider.of<HomeBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Live Bloc"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: bloc.increment, // sem ()
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          StreamBuilder(
              stream: bloc.outCount,
              builder: (context, snapshot) {
                if (snapshot.hasData)
                  return Text("Contagem em ${snapshot.data}");
                else
                  return Container();
              }),
          Container(
            height: 30,
          ),
          StreamBuilder(
              stream: bloc.outCount2,
              builder: (context, snapshot) {
                if (snapshot.hasData)
                  return Text("Contagem em ${snapshot.data}");
                else
                  return Container();
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: bloc.increment2, // sem ()
      ),
    );
  }
}
