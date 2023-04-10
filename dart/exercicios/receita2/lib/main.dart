import 'package:flutter/material.dart';

class NewAppBar extends StatelessWidget implements PreferredSizeWidget {
  NewAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Dicas"),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class NewNavBar extends StatelessWidget {
  NewNavBar();

  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(onTap: botaoFoiTocado, items: const [
      BottomNavigationBarItem(
        label: "Cafés",
        icon: Icon(Icons.coffee_outlined),
      ),
      BottomNavigationBarItem(
          label: "Cervejas", icon: Icon(Icons.local_drink_outlined)),
      BottomNavigationBarItem(label: "Nações", icon: Icon(Icons.flag_outlined))
    ]);
  }
}

class NewAppContent extends StatelessWidget {
  NewAppContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewAppBar(),
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
      bottomNavigationBar: NewNavBar(),
    );
  }
}

void main() {
  MaterialApp app = MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: NewAppContent());

  runApp(app);
}
