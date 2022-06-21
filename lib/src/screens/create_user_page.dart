import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({Key? key}) : super(key: key);

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final List<String> _listaRoles = <String>[
    'Administrador',
    'Operador',
    'Supervisor'
  ];
  final List<String> _listaDocentes = <String>[
    'Benitez Quecha Claribel',
    'Castañón Olguín Eduardo',
    'García Martínez Raúl',
    'Jiménez Halla Johann Francisco',
    'Monzoy Ventre Elsie Fernanda'
  ];
  final List<String> _listaCarrera = <String>[
    'Ingeniería en Sistemas Computacionales',
    'Ingeniería Eléctrica',
    'Ingeniería en Gestión Empresarial',
    'Ingeniería Electrónica',
    'Ingeniería Industrial'
  ];
  final List<String> _listaMateria = <String>[
    'Ingeniería de software',
    'Lenguajes de interfaz',
    'Programación',
    'Estructura de datos',
    'Mercadotecnia electrónica'
  ];
  final List<String> _listaGrupos = <String>[
    '6SB-SCC-1014',
    'IEU-ELC-1022',
    '3SB-SCD-1007',
    '2GA-AEB-1082',
    '7GA-AEB-1045',
    'SCD-1008-6SA'
  ];
  final List<String> _listaDesde = <String>[
    '07:00',
    '08:00',
    '09:00',
    '10:00',
    '11:00',
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
    '20:00'
  ];
  final List<String> _listaHasta = <String>[
    '08:00',
    '09:00',
    '10:00',
    '11:00',
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
    '20:00',
    '21:00'
  ];

  String _vistaRoles = 'Seleccione un rol';
  String _vistaDocente = 'Seleccione una opción';
  String _vistaCarrera = 'Seleccione una opción';
  String _vistaMateria = 'Seleccione una opción';
  String _vistaGrupo = 'Seleccione una opción';
  String _vistaDesde = 'Seleccione';
  String _vistaHasta = 'Seleccione';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF01325E),
          //centerTitle: true,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: Text(
                  'INSTITUTO TECNOLÓGICO DE OAXACA',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              const Expanded(
                child: Text(
                  '     | LABORATORIO DE BASE DE DATOS',
                  //'INSTITUTO TECNOLÓGICO DE OAXACA',
                  textAlign: TextAlign.start,
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ),
              ClipRRect(
                //borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/ito_escudo.png',
                  height: 56,
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding:
            const EdgeInsets.only(left: 60, right: 60, top: 30, bottom: 30),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () => _backToHome(context),
                        child: const Text(
                          '< Volver',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Expanded(
                      child: Text(
                        'Panel de control',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: const Color(0xFFBAD1FF),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50, top: 30, bottom: 30),
                      child: Column(
                        children: <Widget>[
                          Row(children: const <Widget>[
                            Text(
                              'Crea un nuevo usuario',
                              style: TextStyle(fontSize: 32),
                            )
                          ]),
                          const SizedBox(
                            height: 70,
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 500,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 10, bottom: 10),
                                          width: 120,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            color: const Color(0xFF01325E),
                                          ),
                                          child: const Text(
                                            'Nombre',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              width: 320,
                                              height: 40,
                                              alignment: Alignment.center,
                                              padding: const EdgeInsets.all(10.0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15.0),
                                                color: Colors.white,
                                              ),
                                              child: TextFormField(),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    width: 500,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 10, bottom: 10),
                                          width: 120,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            color: const Color(0xFF01325E),
                                          ),
                                          child: const Text(
                                            'Usuario',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              width: 320,
                                              height: 40,
                                              alignment: Alignment.center,
                                              padding: const EdgeInsets.all(10.0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15.0),
                                                color: Colors.white,
                                              ),
                                              child: TextFormField(),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    width: 500,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                          width: 120,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            color: const Color(0xFF01325E),
                                          ),
                                          child: const Text(
                                            'Rol',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        DropdownButton(
                                          items: _listaRoles.map((String a) {
                                            return DropdownMenuItem(
                                                value: a, child: Text(a));
                                          }).toList(),
                                          onChanged: (text) => {
                                            setState(() {
                                              _vistaRoles = text.toString();
                                            })
                                          },
                                          hint: Text(_vistaRoles),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 500,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 10, bottom: 10),
                                          width: 130,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            color: const Color(0xFF01325E),
                                          ),
                                          child: const Text(
                                            'Correo',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              width: 320,
                                              height: 40,
                                              alignment: Alignment.center,
                                              padding: const EdgeInsets.all(10.0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15.0),
                                                color: Colors.white,
                                              ),
                                              child: TextFormField(),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    width: 500,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 10, bottom: 10),
                                          width: 130,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            color: const Color(0xFF01325E),
                                          ),
                                          child: const Text(
                                            'Contraseña',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              width: 320,
                                              height: 40,
                                              alignment: Alignment.center,
                                              padding: const EdgeInsets.all(10.0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15.0),
                                                color: Colors.white,
                                              ),
                                              child: TextFormField(),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    width: 500,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                          width: 130,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15.0),
                                            color: const Color(0xFF01325E),
                                          ),
                                          child: const Text(
                                            'Contraseña',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              width: 320,
                                              height: 40,
                                              alignment: Alignment.center,
                                              padding: const EdgeInsets.all(10.0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15.0),
                                                color: Colors.white,
                                              ),
                                              child: TextFormField(),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          Row(
                            children: <Widget>[
                              ElevatedButton(
                                  style: _elevatedButtonStyle(context),
                                  onPressed: () {},
                                  child: const Text('Crear usuario')
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ButtonStyle _elevatedButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Theme.of(context).primaryColor,
      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  void _backToHome(BuildContext context) {
    Navigator.of(context).pushNamed('/controlPanelPage');
  }
}
