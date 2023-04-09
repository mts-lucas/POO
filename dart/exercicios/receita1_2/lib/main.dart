import 'package:flutter/material.dart';

void main() {
  MaterialApp app1p2 = MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Cervejas")),
        body: Center(
            child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
                label: Expanded(
                    child: Text(
              'Nome',
              style: TextStyle(fontStyle: FontStyle.italic),
            ))),
            DataColumn(
                label: Expanded(
                    child: Text(
              'Estilo',
              style: TextStyle(fontStyle: FontStyle.italic),
            ))),
            DataColumn(
                label: Expanded(
                    child: Text(
              'IBU',
              style: TextStyle(fontStyle: FontStyle.italic),
            ))),
          ],
          rows: const <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text('La Fin Du Monde')),
              DataCell(Text('Bock')),
              DataCell(Text('65')),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Sapporo Premium')),
              DataCell(Text('Sour Ale')),
              DataCell(Text('54')),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Duvel')),
              DataCell(Text('Pilsner')),
              DataCell(Text('82')),
            ]),
          ],
        )),
        bottomNavigationBar: Text("Botão 1"),
      ));

  runApp(app1p2);
}
