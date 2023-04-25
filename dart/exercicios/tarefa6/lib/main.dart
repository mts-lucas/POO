import 'package:flutter/material.dart';

// o codigo pode estar semelhante ao tutorial pois fiz as adaptacoes em cima dele

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  var _opcao;
  late double _valor;
  bool? _aceitar = false;
  var _genero;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _valor = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Nome'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor prencha o nome';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Idade'),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira uma idade';
              }
              return null;
            },
          ),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(labelText: 'Função'),
            value: _opcao,
            onChanged: (newValue) {
              setState(() {
                _opcao = newValue;
              });
            },
            items: const [
              DropdownMenuItem(
                value: 'Aluno',
                child: Text('Aluno'),
              ),
              DropdownMenuItem(
                value: 'Professor',
                child: Text('Professor'),
              ),
            ],
            validator: (value) {
              if (value == null) {
                return 'Por favor, selecione uma opção';
              }
              return null;
            },
          ),
          CheckboxListTile(
            title: Text('Aceita tomar uma com fabricio?'),
            value: _aceitar,
            onChanged: (value) {
              setState(() {
                _aceitar = value;
              });
            },
          ),
          Text('De 0 a 100, quanto alcolizado ficara?'),
          Slider(
            value: _valor,
            onChanged: (double newValue) {
              setState(() {
                _valor = newValue;
              });
            },
            min: 0,
            max: 100,
          ),
          Text('Gênero:'),
          Row(
            children: [
              Radio(
                value: 'masculino',
                groupValue: _genero,
                onChanged: (value) {
                  setState(() {
                    _genero = value;
                  });
                },
              ),
              Text('Masculino'),
              Radio(
                value: 'feminino',
                groupValue: _genero,
                onChanged: (value) {
                  setState(() {
                    _genero = value;
                  });
                },
              ),
              Text('Feminino'),
              Radio(
                value: 'outros',
                groupValue: _genero,
                onChanged: (value) {
                  setState(() {
                    _genero = value;
                  });
                },
              ),
              Text('outros'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
