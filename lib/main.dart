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
  final String cargo;

  Proveedor(this.idProveedor, this.nombre, this.apellido, this.cargo);
}

class ProveedoresList extends StatelessWidget {
  final List<Proveedor> proveedores = [
    Proveedor(1, 'Juan', 'Pérez', 'Gerente'),
    Proveedor(2, 'María', 'Gómez', 'Vendedor'),
    Proveedor(3, 'Carlos', 'Rodríguez', 'Analista'),
    Proveedor(4, 'Ana', 'López', 'Supervisor'),
    Proveedor(5, 'Pedro', 'Martínez', 'Técnico'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Proveedores'),
      ),
      body: Center(
        child: Column(
          children: proveedores.map((proveedor) {
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
                title: Text('${proveedor.nombre} ${proveedor.apellido}'),
                subtitle: Text(
                    'ID: ${proveedor.idProveedor} - Cargo: ${proveedor.cargo}'),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
