import 'package:flutter/material.dart';

class SavePaciente extends StatelessWidget {
  static const String ROUTE = "/save";
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nuevo Paciente"),
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
          _nameInput(), //2
          _addressInput(),
          _staturaInput(),
          _locationInput(),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: _loginButton()), //2
        ],
      ),
    );
  }
}

Widget _nameInput() {
  return TextFormField(
    decoration: const InputDecoration(
      icon: Icon(Icons.person),
      labelText: 'Nombres y Apellidos',
    ),
  );
}

Widget _addressInput() {
  return TextFormField(
    decoration: const InputDecoration(
      icon: Icon(Icons.home),
      labelText: 'Dirección',
    ),
  );
}

Widget _staturaInput() {
  return TextFormField(
    decoration: const InputDecoration(
      icon: Icon(Icons.horizontal_rule),
      labelText: 'Estatura',
    ),
  );
}

Widget _locationInput() {
  return TextFormField(
    decoration: const InputDecoration(
      icon: Icon(Icons.add_location_rounded),
      labelText: 'Ubicación',
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
