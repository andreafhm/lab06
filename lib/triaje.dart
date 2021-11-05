import 'package:flutter/material.dart';

class Triaje extends StatelessWidget {
  static const String ROUTE = "/triaje";
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nuevo Triaje"),
        ),
        body: Container(
          child: _FormSave(),
        ));
  }
}

class _FormSave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _pesoInput(),
          _temperaturaInput(),
          _presionInput(),
          _saturacionInput(),         
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: _loginButton()), //2
        ],
      ),
    );
  }
}

Widget _pesoInput() {
  return TextFormField(
    decoration: const InputDecoration(
      icon: Icon(Icons.line_weight),
      labelText: 'Peso',
    ),
  );
}

Widget  _temperaturaInput() {
  return TextFormField(
    decoration: const InputDecoration(
      icon: Icon(Icons.thermostat),
      labelText: 'Temperatura',
    ),
  );
}

Widget _presionInput() {
  return TextFormField(
    decoration: const InputDecoration(
      icon: Icon(Icons.account_balance),
      labelText: 'Presión',
    ),
  );
}

Widget _saturacionInput() {
  return TextFormField(
    decoration: const InputDecoration(
      icon: Icon(Icons.line_weight),
      labelText: 'Nivel de Saturación',
    ),
  );
}


Widget _loginButton() {
  return Center(
    child: ElevatedButton(
      onPressed: () {
        // devolverá true si el formulario es válido, o falso si
        // el formulario no es válido.
        print("Guardar");
      },
      child: Text('Guardar'),
    ),
  );
}
