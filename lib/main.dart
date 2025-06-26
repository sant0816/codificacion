import 'package:flutter/material.dart';
import 'Estudios.dart';
import 'Empleos.dart';
void main() => runApp(HojaVidaApp());

class HojaVidaApp extends StatelessWidget {
  const HojaVidaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hoja de Vida',
      home: MenuPrincipal(),
    );
  }
}

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hoja de vida')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menú', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Panel de usuario'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Salir'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('Datos Personales'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DatosPersonalesVista()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Empleos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EmpleosVista()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Estudios'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EstudiosVista()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DatosPersonalesVista extends StatelessWidget {
  const DatosPersonalesVista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Datos Personales')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/TsW.jpg'), 
            ),
            SizedBox(height: 20),
            Text('Nombre: Santiago'),
            Text('Apellidos: Cerón Gaviria'),
            Text('Dirección: San Eduardo'),
            Text('Teléfono: 3128238322'),
            Text('Email: ceron8636@gmail.com'),
          ],
        ),
      ),
    );
  }
}



