import 'package:flutter/material.dart';

class NewProductPage extends StatelessWidget {
  const NewProductPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nuevo producto'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
            ),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_a_photo,
        ),
        onPressed: () {},
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://lh3.googleusercontent.com/proxy/gtMuW83xZNQYPotEooDvjQQgQsjFKNRPsylIfslGiPZ7fa5tRBBltUB4MKyeopKTla3o-LBmwlcGEsAZSKyP'),
                  ),
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Ingrese el código de producto',
                  ),
                ),
              ),
              Container(
                child: DropDownList(),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Ingrese el nombre del producto',
                  ),
                ),
              ),
              Container(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Ingrese el precio del producto',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DropDownList extends StatefulWidget {
  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  List listItem = ['tipo 1', 'tipo 2', 'tipo 3'];
  String valueChoose;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text(
        'Seleccione',
      ),
      value: valueChoose,
      onChanged: (newValue) {
        setState(() {
          valueChoose = newValue;
        });
      },
      items: listItem.map((valueItem) {
        return DropdownMenuItem(
          value: valueItem,
          child: Text(valueItem),
        );
      }).toList(),
    );
  }
}
