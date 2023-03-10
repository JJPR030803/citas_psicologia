import 'package:citas_psicologia/principal.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  TextEditingController textControlador = TextEditingController();
  String vacio = '';
  @override
  Widget build(BuildContext context) {
    double pantallaAncho = MediaQuery.of(context).size.width;
    double pantallaAltura = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: ClipOval(
                  child: Image.asset('decoracion/images/nubes_neon.jpg',
                      width: pantallaAncho * .5, height: pantallaAltura * .25),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(130, 166, 118, 1),
                      border: Border.all(
                        color: const Color.fromRGBO(15, 244, 15, 1),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    height: pantallaAltura * .03,
                    width: pantallaAncho * .94,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'decoracion/images/nubes_neon.jpg',
                          ),
                        ),
                        RichText(
                            text: const TextSpan(
                                text: 'Eslogan',
                                style: TextStyle(fontSize: 24))),
                      ],
                    ),
                  )
                ],
              ),
              //Usuario
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(
                          text: 'Usuario',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(223, 248, 213, 1),
                          ))),
                ],
              ),
              TextField(
                  controller: textControlador,
                  maxLines: 1,
                  decoration: InputDecoration(
                    icon: const Icon(
                      Icons.person,
                      color: Color.fromRGBO(15, 244, 15, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Introduzca el usuario',
                    filled: true,
                    fillColor: const Color.fromRGBO(130, 166, 118, 1),
                  )),
              //contraseña 2
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(
                          text: 'Contraseña 1',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(223, 248, 213, 1),
                          ))),
                ],
              ),
              TextField(
                  controller: textControlador,
                  maxLines: 1,
                  decoration: InputDecoration(
                    icon: const Icon(
                      Icons.password,
                      color: Color.fromRGBO(15, 244, 15, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Introduzca la contraseña',
                    filled: true,
                    fillColor: const Color.fromRGBO(130, 166, 118, 1),
                  )),
              //contraseña 2
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(
                          text: 'Contraseña 1',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(223, 248, 213, 1),
                          ))),
                ],
              ),
              TextField(
                  controller: textControlador,
                  maxLines: 1,
                  decoration: InputDecoration(
                    icon: const Icon(
                      Icons.password_sharp,
                      color: Color.fromRGBO(15, 244, 15, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Introduzca la contraseña',
                    filled: true,
                    fillColor: const Color.fromRGBO(130, 166, 118, 1),
                  )),
              const SizedBox(
                height: 30,
              ),
              //boton de inicio de sesion
              FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Principal())));
                  },
                  label: const Text('Iniciar Sesion'))
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(0, 76, 116, 1),
    );
  }
}
