import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddTab extends StatefulWidget {
  @override
  _AddTabState createState() => _AddTabState();
}

class _AddTabState extends State<AddTab> {
  PickedFile sampleImage;
  List listItem = ['tipo 1', 'tipo 2', 'tipo 3'];
  String valueChoose;
  TextEditingController codigoTextController;
  TextEditingController tipoTextController;
  TextEditingController nombreTextController;
  TextEditingController precioTextController;
  TextEditingController descripcionTextController;

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
            onPressed: () {
              enviar();
              codigoTextController.clear();
              // tipoTextController.clear();
              nombreTextController.clear();
              precioTextController.clear();
              descripcionTextController.clear();
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.add_a_photo,
        ),
        onPressed: () {
          alertDialog(context);
        },
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 200,
                    width: 200,
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //     fit: BoxFit.cover,
                    //     image: Image.file(sampleImage.path),
                    child: _setImageView(),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(250, 228, 169, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: TextFormField(
                        controller: codigoTextController,
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
                  // Container(
                  //   width: double.infinity,
                  //   // color: Color.fromRGBO(238, 238, 238, 1),

                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(20),
                  //     color: Color.fromRGBO(250, 228, 169, 1),
                  //     // border: OutlineInputBorder(borderSide: BorderSide.none,),
                  //   ),
                  //   child: Container(
                  //     margin: EdgeInsets.only(left: 30),
                  //     child: DropdownButton(
                  //       hint: Text(
                  //         'Seleccione el tipo de producto',
                  //       ),
                  //       value: valueChoose,
                  //       onChanged: (newValue) {
                  //         setState(() {
                  //           valueChoose = newValue;
                  //         });
                  //       },
                  //       items: listItem.map((valueItem) {
                  //         return DropdownMenuItem(
                  //           value: valueItem,
                  //           child: Text(valueItem),
                  //         );
                  //       }).toList(),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(250, 228, 169, 1),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: TextFormField(
                        controller: nombreTextController,
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
                      color: Color.fromRGBO(250, 228, 169, 1),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: TextFormField(
                        controller: precioTextController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Ingrese el precio del producto',
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
                      color: Color.fromRGBO(250, 228, 169, 1),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: TextFormField(
                        controller: descripcionTextController,
                        maxLines: 4,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Descripción del producto',
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void enviar() {
    FirebaseFirestore.instance.collection("market").add(
      {
        'codigo': codigoTextController.text,
        // 'tipo': valueChoose,
        'nombre': nombreTextController.text,
        'precio': precioTextController.text,
        'descripcion': descripcionTextController.text,
      },
    );
  }

  @override
  void initState() {
    super.initState();
    codigoTextController = TextEditingController();
    nombreTextController = TextEditingController();
    precioTextController = TextEditingController();
    descripcionTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    codigoTextController.dispose();
    nombreTextController.dispose();
    precioTextController.dispose();
    descripcionTextController.dispose();
  }

  Widget _setImageView() {
    if (sampleImage == null) {
      // return AssetImage('lib/src/assets/img/comprando_online.jpg');
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('lib/src/assets/img/imagen.png'),
          ),
        ),
      );
    } else {
      return Image.file(File(sampleImage.path));
    }
  }

  openCamera(BuildContext context) async {
    var picture = await ImagePicker().getImage(source: ImageSource.camera);
    this.setState(() {
      sampleImage = picture;
    });
    Navigator.of(context).pop();
  }

  openGallery(BuildContext context) async {
    var picture = await ImagePicker().getImage(source: ImageSource.gallery);
    this.setState(() {
      sampleImage = picture;
    });
    Navigator.of(context).pop();
  }

  Future alertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Seleccione'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.image,
                          ),
                        ),
                        Text(
                          'Galería',
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    openGallery(context);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.photo_camera,
                        ),
                      ),
                      Text(
                        'Cámara',
                      )
                    ],
                  ),
                  onTap: () {
                    openCamera(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
