import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EstudiosVista extends StatelessWidget {
  const EstudiosVista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Estudios')),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Bachiller'),
            subtitle: Text('Graduado en Colegio Colombia.'),
            trailing: Icon(Icons.arrow_circle_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Tecnólogo'),
            subtitle: Text('Tecnólogo en Análisis y Desarrollo de Sistemas de Información - SENA.'),
            trailing: Icon(Icons.arrow_circle_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Cursos'),
            subtitle: Text('Curso de Desarrollo Flutter y curso básico de Bases de Datos.'),
            trailing: Icon(Icons.arrow_circle_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}