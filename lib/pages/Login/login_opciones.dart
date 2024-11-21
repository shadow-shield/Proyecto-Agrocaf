import 'package:agrocaf/pages/Login/login_operador.dart';
import 'package:agrocaf/pages/Login/login_admin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginOpciones extends StatelessWidget {
  const LoginOpciones({super.key});

  void _LoginOperador(BuildContext context) {
    Get.to(LoginOperador());
  }

  void _LoginAdmin(BuildContext context) {
    Get.to(LoginAdmin());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children:[ 
              /* Image.asset('images/cultivo.jpg',fit: BoxFit.scaleDown,), */
              Container(
              height: MediaQuery.of(context)
                  .size
                  .height, // Hace que el SingleChildScrollView tenga la altura completa de la pantalla
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 400,
                        width: 400,
                        margin: EdgeInsets.only(bottom: 50),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.green, width: 5)),
                        child: Image.asset('images/agrocaf_logo.png'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              _LoginOperador(context);
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(200, 60), // Ancho y alto del botón
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15), // Espaciado interno
                              textStyle: TextStyle(
                                fontSize: 20, // Tamaño de la fuente del texto
                              ),
                            ),
                            child: Text('Ir a Login Operador'),
                          ),
                          SizedBox(width: 10), // Espacio entre los botones
                          ElevatedButton(
                            onPressed: () {
                              _LoginAdmin(context);
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(200, 60), // Ancho y alto del botón
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15), // Espaciado interno
                              textStyle: TextStyle(
                                fontSize: 20, // Tamaño de la fuente del texto
                              ),
                            ),
                            child: Text('Ir a Login Admin'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),]
          ),
        ),
      ),
    );
  }
}
