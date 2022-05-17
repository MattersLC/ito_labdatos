import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _listaDeOpciones = <String>["27-01-2022 al 20-06-2022", "Opcion 2", 'Opcion 3'];
  var _lista = ['carro', 'casa', 'vaca'];
  String _vista = 'Seleccione una opcion';

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
            //mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.center,
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
                      'SEMESTRE:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  DropdownButton(
                    dropdownColor: const Color(0xFFBAD1FF),
                    items: _listaDeOpciones.map((String a){
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
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


