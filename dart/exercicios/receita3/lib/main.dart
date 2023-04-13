import 'package:flutter/material.dart';

void main() {
  MyApp app = MyApp();

  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          iconTheme: IconThemeData(color: Colors.green),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // drawer: NavDrawer(),
          appBar: MyAppBar(),
          body: DataBodyWidget(objects: const [
            "La Fin Du Monde - Bock - 65 ibu",
            "Sapporo Premiume - Sour Ale - 54 ibu",
            "Duvel - Pilsner - 82 ibu"
          ]),
          bottomNavigationBar: NewNavBar(
            Newicons: const [
              Icon(Icons.home),
              Icon(Icons.search),
              Icon(Icons.favorite),
              Icon(Icons.person),
            ],
          ),
        ));
  }
}

class NewNavBar extends StatelessWidget {
  List<Icon> Newicons;
  NewNavBar({this.Newicons = const []});

  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: botaoFoiTocado,
        // fixedColor: Colors.green,
        items: Newicons.map(
            (icn) => BottomNavigationBarItem(label: " ", icon: icn)).toList());
  }
}

class DataBodyWidget extends StatelessWidget {
  List<String> objects;

  DataBodyWidget({this.objects = const []});

  Expanded processarUmElemento(String obj) {
    return Expanded(
      child: Center(child: Text(obj)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: objects
            .map((obj) => Expanded(
                  child: Center(child: Text(obj)),
                ))
            .toList());
  }
}

class MyAppBar extends AppBar {
  MyAppBar({
    Key? key,
  }) : super(
            key: key,
            title: const Text("Dicas"),
            backgroundColor: Colors.deepPurple,
            actions: [
              PopupMenuButton(
                itemBuilder: (context) => const [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Text('Red'),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Text('Purple'),
                  ),
                  PopupMenuItem<int>(
                    value: 2,
                    child: Text('Blue'),
                  ),
                ],
                onSelected: (value) {
                  if (value == 0) {
                    print("Red is selected");
                  } else if (value == 1) {
                    print("Purple is selected");
                  } else if (value == 2) {
                    print("Blue is selected");
                  }
                },
              ),
            ]);
}
