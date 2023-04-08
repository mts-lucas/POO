import 'package:flutter/material.dart';
import 'photos.dart';

MaterialApp rec1 = MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.indigo,
    fontFamily: 'comic-sans',
    brightness: Brightness.dark,
  ),
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
            FadeInImage(
              image: imageTest,
              height: 300,
              placeholder: imageTest,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "person",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "shopping",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favorite",
          ),
        ],
      )),
);
