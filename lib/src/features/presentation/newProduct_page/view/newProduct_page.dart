import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewProductPage extends StatefulWidget {
  @override
  _NewProductPageState createState() => _NewProductPageState();
}

class _NewProductPageState extends State<NewProductPage> {
  var sampleImage;
  List listItem = ['tipo 1', 'tipo 2', 'tipo 3'];
  String valueChoose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nuevo producto'),
        backgroundColor: Colors.orange,
        actions: [
          FlatButton(
            child: Text(
              'Guardar',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          // IconButton(
          //   icon: Icon(
          //     Icons.save,
          //   ),
          //   onPressed: () {
          //     // getImage,
          //   },
          // )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
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
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2017/01/25/17/35/picture-2008484_960_720.png',
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(238, 238, 238, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ingrese el código de producto',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                // color: Color.fromRGBO(238, 238, 238, 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(238, 238, 238, 1),
                  // border: OutlineInputBorder(borderSide: BorderSide.none,),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 30),
                  child: DropdownButton(
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
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(238, 238, 238, 1),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ingrese el nombre del producto',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(238, 238, 238, 1),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Ingrese el precio del producto',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
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

// Future getImage() async {
//   var tempImage = await ImagePicker().getImage(source: ImageSource.gallery);

//   setState(() {
//     sampleImage = tempImage;
//   });
// }
