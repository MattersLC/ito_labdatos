import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _listaSemestres = <String>["27-01-2022 AL 20-06-2022", "Opcion 2", 'Opcion 3'];
  List<String> _listaCarreras = <String>["Todas las carreras", "Ingeniería en Sistemas Computacionales", 'Opcion 3'];
  String _vista = 'Seleccione una opción';
  String _vista2 = 'Seleccione una opción';

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
              const SizedBox(width: 50,),
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
        body:
        Padding(
          padding: const EdgeInsets.only(left: 60, right: 60, top: 30),
          child: Column(
            children: <Widget>[
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      'Prácticas programadas',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xFFBAD1FF),
                    ),
                    child: const Text(
                      'Semestre:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  DropdownButton(
                    items: _listaSemestres.map((String a){
                      return DropdownMenuItem(
                        value: a,
                          child: Text(a));
                    }).toList(),
                    onChanged: (text) => {
                      setState((){
                        _vista = text.toString();
                      })
                    },
                    hint: Text(_vista),
                  ),
                  const SizedBox(width: 40,),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xFFBAD1FF),
                    ),
                    child: const Text(
                      'Filtrar:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  DropdownButton(
                    items: _listaCarreras.map((String b){
                      return DropdownMenuItem(
                          value: b,
                          child: Text(b));
                    }).toList(),
                    onChanged: (value) => {
                      setState((){
                        _vista2 = value.toString();
                      })
                    },
                    hint: Text(_vista2),
                  ),
                  //const SizedBox(width: 580,),
                  const SizedBox(width: 180,),
                  ElevatedButton(
                    style: _elevatedButtonStyle(context),
                    onPressed: (){},
                    child: const Text('Inventario')
                  ),
                  const SizedBox(width: 40,),
                  ElevatedButton(
                      style: _elevatedButtonStyle(context),
                      onPressed: (){},
                      child: const Text('Agregar práctica')
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ButtonStyle _elevatedButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Theme.of(context).primaryColor,
      padding: const EdgeInsets.only(top:15, bottom: 15, left: 30, right: 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}


