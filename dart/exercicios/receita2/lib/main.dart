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
  List<Icon> icons;
  NewNavBar({this.icons = const []});

  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: botaoFoiTocado,
        items: icons
            .map((item) => BottomNavigationBarItem(icon: item, label: " "))
            .toList());
  }
}

class NewAppContent extends StatelessWidget {
  NewAppContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewAppBar(),
      body: Column(children: const [
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
      bottomNavigationBar: NewNavBar(
        icons: const [
          Icon(Icons.accessibility),
          Icon(Icons.book),
          Icon(Icons.play_arrow),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.deepPurple, brightness: Brightness.dark),
        home: NewAppContent());
  }
}

void main() {
  MyApp app = MyApp();
  runApp(app);
}
