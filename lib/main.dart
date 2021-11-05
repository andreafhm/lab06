import 'package:flutter/material.dart';
import 'package:lab06/Paciente.dart';
import 'package:lab06/save_paciente.dart';
import 'package:lab06/triaje.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Laboratorio 06';
    return MaterialApp(
      initialRoute: "/",
      title: 'Pacientes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
      routes: {
        SavePaciente.ROUTE: (_) => SavePaciente(),
        Triaje.ROUTE: (_) => Triaje(),
      },
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pacientes')),
        body: new ListView(children: pacientes.map(_buildItem).toList()),
        drawer: Drawer(
          child: ListView(
            // Importante: elimine cualquier padding del ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(''),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Pacientes'),
                onTap: () {
                  // Actualiza el estado de la aplicación
                  // ...
                },
              ),
              ListTile(
                title: Text('Triajes'),
                onTap: () {
                  Navigator.pushNamed(context, Triaje.ROUTE);
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, SavePaciente.ROUTE);
            }));
  }
}

Widget _buildItem(Paciente paciente) {
  return new ListTile(
    title: new Text(paciente.name),
    subtitle: new Text('Dirección: ${paciente.adress}'),
    leading: new Icon(Icons.person),
  );
}
