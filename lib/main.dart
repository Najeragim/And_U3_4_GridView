import 'package:flutter/material.dart';

void main() => runApp(MiGaleriaApp());

class MiGaleriaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galería',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new Inicio(title: 'Galería de Najera'),
    ); //Material App
  } //Constructor
} //clase MiGaleriaApp

class Inicio extends StatefulWidget {
  final String title;
  @override
  Inicio({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    return new InicioState();
  } //Estado del Inicio
} //Clase Inicio

class InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        centerTitle: true,
      ), //AppBar
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(30),
      ), //GridView
    ); //Scaffold
  } //Constructor
} //Clase InicioState

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers = new List<Container>.generate(numberOfTiles, (int index) {
    //index = 0, 1, 2,...
    final imageName = index < 9 ? 'https://raw.githubusercontent.com/Najeragim/imagenes/main/gridview1/image0${index + 1}.jpg' : 'https://raw.githubusercontent.com/Najeragim/imagenes/main/gridview1/image${index + 1}.jpg';
    // 'images/image0${index + 1}.JPG' : 'images/image${index + 1}.JPG';
    return new Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.green[100],
        image: DecorationImage(
          image: NetworkImage(imageName),
          fit: BoxFit.cover,
        ),
      ),
    );
  }); //Contenedor generador de nombres
  return containers;
} //Fin de List
