import 'package:agrocaf/pages/Apartados_admin/Home_Administrador.dart';
import 'package:agrocaf/pages/Configuracion/Configuracion.dart';
//import 'package:agrocaf/pages/Apartados_Operador/Principal/Principal.dart';
//import 'package:agrocaf/pages/Apartados_Operador/Temporadas/Temporadas.dart';
import 'package:agrocaf/pages/Reportes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNaviAdmin extends StatelessWidget {
  const BottomNaviAdmin({super.key});

  void _HomeAdmin(BuildContext context) {
    Get.to(const HomeAdmin());
  }

  void _Configuracion(BuildContext context) {
    Get.to(const Configuracion());
  }

  void _Reportes(BuildContext context) {
    Get.to(const Reportes());
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.white,
      backgroundColor: const Color.fromRGBO(76, 140, 43, 1),
      onTap: (int index) {
        switch (index) {
          /*case 0:
            _HomeAdmin(context);
            break;*/
          case 0:
            _HomeAdmin(context);
            break;
          /*case 2:
            _Temporada(context);
            break;*/
          case 1:
            _Reportes(context);
            break;
          case 2:
            _Configuracion(context);
            break;
        }
      },
      items: [
        /*BottomNavigationBarItem(
          icon: Icon(Icons.scale),
          label: 'Nueva Pesada',
        ),*/
        BottomNavigationBarItem(
          icon: Icon(Icons.house_outlined),
          label: 'Principal',
        ),
        /*BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),
          label: 'Temporadas',
        ),*/
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long_outlined),
          label: 'Reportes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configuración',
        ),
      ],

      showUnselectedLabels:
          true, // Asegura que se muestren las etiquetas no seleccionadas
    );
  }
}
