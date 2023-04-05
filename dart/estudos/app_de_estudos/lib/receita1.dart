import 'package:flutter/material.dart';

MaterialApp rec1 = MaterialApp(
    theme: ThemeData(primarySwatch: Colors.indigo),
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        centerTitle: true,
        titleSpacing: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // adicionando o mainAxisAlignment
          children: const [
            Text("Texto1", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Texto2", style: TextStyle(color: Colors.red)),
            Text("Texto3", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Texto4", style: TextStyle(color: Colors.red)),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[],
      ),
    ));
