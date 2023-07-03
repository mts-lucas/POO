import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

enum TableStatus { idle, loading, ready, error }

enum ItemType { beer, coffee, nation, none }

class DataService {
  static const MAX_N_ITEMS = 15;
  static const MIN_N_ITEMS = 3;
  static const DEFAULT_N_ITEMS = 7;

  int _numberOfItems = DEFAULT_N_ITEMS;

  set numberOfItems(n) {
    _numberOfItems = n < 0
        ? MIN_N_ITEMS
        : n > MAX_N_ITEMS
            ? MAX_N_ITEMS
            : n;
  }

  int get getNumberOfItems {
    return _numberOfItems;
  }

  final ValueNotifier<Map<String, dynamic>> tableStateNotifier = ValueNotifier({
    'status': TableStatus.idle,
    'dataObjects': [],
    'itemType': ItemType.none
  });

  void carregar(index) {
    final funcoes = [carregarCafes, carregarCervejas, carregarNacoes];

    funcoes[index]();
  }

  void carregarCafes() {
    carregarDados(
      ItemType.coffee,
      TableStatus.loading,
      'api/coffee/random_coffee',
      ["blend_name", "origin", "variety"],
      ["Nome", "Origem", "Tipo"],
    );
  }

  void carregarNacoes() {
    carregarDados(
      ItemType.nation,
      TableStatus.loading,
      'api/nation/random_nation',
      ["nationality", "capital", "language", "national_sport"],
      ["Nome", "Capital", "Idioma", "Esporte"],
    );
  }

  void carregarCervejas() {
    carregarDados(
      ItemType.beer,
      TableStatus.loading,
      'api/beer/random_beer',
      ["name", "style", "ibu"],
      ["Nome", "Estilo", "IBU"],
    );
  }

  void carregarDados(
    ItemType itemType,
    TableStatus loadingStatus,
    String path,
    List<String> propertyNames,
    List<String> columnNames,
  ) {
    if (tableStateNotifier.value['status'] == TableStatus.loading) return;

    if (tableStateNotifier.value['itemType'] != itemType) {
      tableStateNotifier.value = {
        'status': loadingStatus,
        'dataObjects': [],
        'itemType': itemType,
      };
    }

    var uri = Uri(
      scheme: 'https',
      host: 'random-data-api.com',
      path: path,
      queryParameters: {'size': '$_numberOfItems'},
    );

    http.read(uri).then((jsonString) {
      var jsonData = jsonDecode(jsonString);

      if (tableStateNotifier.value['status'] != TableStatus.loading)
        jsonData = [...tableStateNotifier.value['dataObjects'], ...jsonData];

      tableStateNotifier.value = {
        'itemType': itemType,
        'status': TableStatus.ready,
        'dataObjects': jsonData,
        'propertyNames': propertyNames,
        'columnNames': columnNames,
      };
    });
  }
}

final dataService = DataService();
