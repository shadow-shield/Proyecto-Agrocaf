import 'package:agrocaf/controllers/pesadas_controller.dart';
import 'package:agrocaf/widgets/Botones_Pagos.dart';
import 'package:agrocaf/widgets/BottomNav/BottomNavigatorAdmin.dart';
import 'package:agrocaf/widgets/LogoutAdmin.dart';
import 'package:agrocaf/widgets/informacion/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeAdmin extends StatefulWidget {
  
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _PagosState();
}

class _PagosState extends State<HomeAdmin> {
  final PesadaController pesadaController = Get.put(PesadaController());
  @override
  Widget build(BuildContext context) {
    pesadaController.fetchPesadas();
    
    return Scaffold(
      bottomNavigationBar: BottomNaviAdmin(),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(76, 140, 43, 1),
        actions: const [
          LogoutAdmin(),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
            child: Column(
          children: [
            Info(
              cargo: 'Admin',
              Texto: 'aassssasa',
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                const Row(children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    'Opciones',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ]),
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                //alignment: Alignment.center,
                                margin: const EdgeInsets.only(left: 20),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // Opcional: centrar el contenido en el Row
                                  children: [
                                    Container_Button_PagoState(
                                        ruta: '/recolectores_admin',
                                        imagen: 'images/Reco.png',
                                        texto: 'Recolectores'),
                                    SizedBox(width: 16),
                                    // Espacio de 16 píxeles entre el primer y el segundo botón
                                    Container_Button_PagoState(
                                        ruta: '/pesadas_admin',
                                        imagen: 'images/Pesa.png',
                                        texto: 'Pesadas'),
                                    SizedBox(
                                        width:
                                            16), // Espacio de 16 píxeles entre el segundo y el tercer botón
                                    Container_Button_PagoState(
                                        ruta: '/apartado_lotes',
                                        imagen: 'images/Lotes.png',
                                        texto: 'Lotes'),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 23, top: 20),
                            child: Row(
                              children: [
                                SizedBox(
                                    width:
                                        16), // Espacio de 16 píxeles entre el segundo y el tercer botón
                                /*Container_Button_PagoState(
                                    ruta: '/apartado_kilo',
                                    imagen: 'images/kilo.png',
                                    texto: 'Kilo'),
                                SizedBox(
                                    width:
                                        13.5),*/
                                Container_Button_PagoState(
                                    ruta: '/apartado_abono',
                                    imagen: 'images/Abonos.png',
                                    texto: 'Abonos'),
                                SizedBox(width: 16),
                                Container_Button_PagoState(
                                    ruta: '/temporadas',
                                    imagen: 'images/calendario.png',
                                    texto: 'Temporadas'),
                                SizedBox(width: 16),
                                Container(
                                  width: 100,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 5,
                                        offset: const Offset(
                                            0, 2), // Sombra hacia abajo
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          border:
                                              Border.all(color: Colors.white),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          child: InkWell(
                                            child: Column(
                                              children: [
                                                Image.asset('images/kilo.png'),
                                                Text('Kilo')
                                              ],
                                            ),
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Text(
                                                        'Ingrese el Valor del Kilo'),
                                                    content: TextField(
                                                      keyboardType: TextInputType.number, // Muestra un teclado numérico
                                                      inputFormatters: [
                                                         FilteringTextInputFormatter.digitsOnly
                                                      ],
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Ingrese solo números',
                                                        border:
                                                            OutlineInputBorder(),
                                                      ),
                                                    ),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          
                                                          Navigator.of(context)
                                                              .pop(); 
                                                        },
                                                        child: Text('Aceptar'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Segundo Column que contiene un Row con 2 elementos de texto
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 260),
                  child: Text(
                    'Pesadas',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 800,
                  height: 330,
                  child: Column(
                    children: [
                      Obx(() {
                        return SizedBox(
                          height: 300,
                          child: ListView.builder(
                            itemCount: pesadaController.pesadas.length,
                            itemBuilder: (context, index) {
                              final item = pesadaController.pesadas[index];
                              return ListTile(
                                title: Text(item.nombre),
                                subtitle: Text(item.fecha.toString()),
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text('Detalles de Pesada',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(height: 10),
                                            Text('Recolector: ${item.nombre}'),
                                            Text('Peso: ${item.peso} kg'),
                                            Text(
                                                'Fecha: ${item.fecha.toString()}'),
                                            SizedBox(height: 20),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text('Cerrar'),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        );
                      })
                    ],
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
