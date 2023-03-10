import 'package:flutter/material.dart';
import 'colores.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secundario,
      appBar: AppBar(
        backgroundColor: primario,
      ),
    );
  }
}
