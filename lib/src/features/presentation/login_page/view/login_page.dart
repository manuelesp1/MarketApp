import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        // colorFilter: ColorFilter.mode(
                        //     Colors.black.withOpacity(0.4), BlendMode.dstATop),
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://fructusforum.com/wp-content/uploads/2021/02/comprar-verduras.jpg'),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 300,
                      margin: EdgeInsets.only(top: 200),
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
                                Navigator.pushNamed(context, 'new_product');
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
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
