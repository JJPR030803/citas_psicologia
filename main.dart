import 'package:flutter/material.dart';
import 'Modelo/Mlogin.dart';
import 'login.dart';
import 'colores.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(contrasenasAdapter());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialColor primario = MaterialColor(0xFF40F, paletaVerde);
    return MaterialApp(
      title: 'App Psicologia',
      theme: ThemeData(
        primarySwatch: primario,
      ),
      home: const login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
