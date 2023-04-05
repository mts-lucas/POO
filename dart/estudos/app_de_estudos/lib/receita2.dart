import 'package:flutter/material.dart';

MaterialApp rec2 = MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    home: Scaffold(
      appBar: AppBar(title: Text("Dicas")),
      body: Column(children: [
        Expanded(
          child: Text("La Fin Du Monde - Bock - 65 ibu"),
        ),
        Expanded(
          child: Text("Sapporo Premiume - Sour Ale - 54 ibu"),
        ),
        Expanded(
          child: Text("Duvel - Pilsner - 82 ibu"),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          label: "Cafés",
          icon: Icon(Icons.coffee_outlined),
        ),
        BottomNavigationBarItem(
            label: "Cervejas", icon: Icon(Icons.local_drink_outlined)),
        BottomNavigationBarItem(
            label: "Nações", icon: Icon(Icons.flag_outlined))
      ]),
    ));
