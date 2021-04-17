import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Container(
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.topRight,
          //     end: Alignment.bottomLeft,
          //     colors: [
          //       Colors.orange,
          //       Color.fromARGB(255, 252, 74, 26),
          //     ],
          //   ),
          // ),
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        // image: NetworkImage(
                        //   'https://s3.amazonaws.com/ry3/51_i_190107228196.5c6603b0.3718750d.full.jpeg',
                        // ),
                        image:
                            AssetImage('lib/src/assets/img/logo_vegetales.png'),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 300,
                      margin: EdgeInsets.only(top: 300),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Contraseña',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: RaisedButton(
                              child: Text(
                                'Iniciar sesión',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Colors.orange,
                              onPressed: () {
                                Navigator.pushNamed(context, 'tab');
                              },
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              'Olvidé mi contraseña',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black26,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'tab');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
