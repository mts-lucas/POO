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
            child: ListView(
          children: [
            DataTable(
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
                DataRow(cells: <DataCell>[
                  DataCell(Text('Brahma')),
                  DataCell(Text('Pilsner')),
                  DataCell(Text('82')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Bohemia')),
                  DataCell(Text('Pilsner')),
                  DataCell(Text('82')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Lokal')),
                  DataCell(Text('Pilsner')),
                  DataCell(Text('82')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Heiniken')),
                  DataCell(Text('Pilsner')),
                  DataCell(Text('82')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Duvel')),
                  DataCell(Text('Pilsner')),
                  DataCell(Text('82')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Antartica')),
                  DataCell(Text('Pilsner')),
                  DataCell(Text('82')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Duvel')),
                  DataCell(Text('Pilsner')),
                  DataCell(Text('82')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Cristal')),
                  DataCell(Text('Bock')),
                  DataCell(Text('65')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Kaiser')),
                  DataCell(Text('Bock')),
                  DataCell(Text('65')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('itaipava')),
                  DataCell(Text('Bock')),
                  DataCell(Text('65')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('La Fin Du Monde')),
                  DataCell(Text('Bock')),
                  DataCell(Text('65')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Schin')),
                  DataCell(Text('Bock')),
                  DataCell(Text('65')),
                ]),
              ],
            ),
          ],
        )),
        bottomNavigationBar: Text("Botão 1"),
      ));

  runApp(app1p2);
}
