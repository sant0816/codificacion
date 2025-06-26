import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmpleosVista extends StatelessWidget {
  const EmpleosVista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Empleos')),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.business_center),
            title: Text('Empresa: X S.A.'),
            subtitle: Text('Cargo: Desarrollador\nDuración: 2020 - 2022'),
          ),
          ListTile(
            leading: Icon(Icons.business_center),
            title: Text('Empresa: AB Ltda.'),
            subtitle: Text('Cargo: Soporte Técnico\nDuración: 2018 - 2020'),
          ),
        ],
      ),
    );
  }
}
