import 'package:flutter/material.dart';

import 'colores.dart';

// ignore: camel_case_types
class barraMenu extends StatelessWidget {
  const barraMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primario,
    );
  }
}
