import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _loading = false;

  final _formKey = GlobalKey<FormState>();
  //late String _user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Center(
            child: SingleChildScrollView(
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.all(60),
                color: const Color(0xFFBAD1FF),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.only(left: 35, right: 35, top: 10, bottom: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: const Color(0xFF01325E),
                                    ),
                                    child: const Text(
                                      'INSTITUTO TECNOLÓGICO DE OAXACA',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 32,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    'assets/images/login_desktop.jpg',
                                    height: 500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 50,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ClipRRect(
                                  child: Image.asset('assets/images/ito_escudo.png', height: 200,),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Laboratorio de base de datos',
                                  style: TextStyle(fontSize: 24),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 220,
                                            height: 50,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15.0),
                                              color: const Color(0xFF01325E),
                                            ),
                                            child: const Text(
                                              'Usuario:',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 30),
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: 600,
                                            height: 50,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15.0),
                                              color: Colors.white,
                                            ),
                                            child: TextFormField(
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 220,
                                            height: 50,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15.0),
                                              color: const Color(0xFF01325E),
                                            ),
                                            child: const Text(
                                              'Contraseña:',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 30),
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: 600,
                                            height: 50,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15.0),
                                              color: Colors.white,
                                            ),
                                            child: TextFormField(
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 50),
                                ElevatedButton(
                                    style: _elevatedButtonStyle(context),
                                    onPressed: () => _login(context),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        const Text('Iniciar sesión'),
                                        if (_loading)
                                          Container(
                                            height: 20,
                                            width: 20,
                                            margin: const EdgeInsets.only(left: 20),
                                            child: const CircularProgressIndicator(
                                              color: Colors.white,
                                            ),
                                          )
                                      ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 150,),
                    ],
                  ),
                ),
              ),
            )
          ),
        ],
      ),
    );
  }

  ButtonStyle _elevatedButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: Theme.of(context).primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  void _login(BuildContext context) {
    if (!_loading) {
      setState(() {
        _loading = true;
      });
    }
    Navigator.of(context).pushNamed('/homePage');
  }

}
