import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProveedoresList(),
    );
  }
}

class Proveedor {
  final int idProveedor;
  final String nombre;
  final String apellido;
  final String cargo; // Nuevo atributo

  Proveedor(this.idProveedor, this.nombre, this.apellido, this.cargo);
}

class ProveedoresList extends StatelessWidget {
  final List<Map<String, dynamic>> proveedoresData = [
    {'id': 1, 'nombre': 'Juan', 'apellido': 'Pérez', 'cargo': 'Gerente'},
    {'id': 2, 'nombre': 'María', 'apellido': 'Gómez', 'cargo': 'Vendedor'},
    {'id': 3, 'nombre': 'Carlos', 'apellido': 'Rodríguez', 'cargo': 'Analista'},
    {'id': 4, 'nombre': 'Ana', 'apellido': 'López', 'cargo': 'Supervisor'},
    {'id': 5, 'nombre': 'Pedro', 'apellido': 'Martínez', 'cargo': 'Técnico'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Proveedores'),
      ),
      body: Center(
        child: Column(
          children: proveedoresData.map((proveedor) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                title: Text('${proveedor['nombre']} ${proveedor['apellido']}'),
                subtitle: Text(
                    'ID: ${proveedor['id']} - Cargo: ${proveedor['cargo']}'), // Muestra el cargo
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
