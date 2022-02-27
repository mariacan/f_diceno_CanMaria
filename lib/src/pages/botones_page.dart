import 'dart:ui';

import 'package:flutter/material.dart';

import 'dart:math';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            _fondoApp(),
            SingleChildScrollView(
              child: Column(
                children: [
                  _titulos(),
                  _botonesRedondeados(),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.6),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromARGB(255, 70, 42, 122),
              Color.fromARGB(255, 45, 35, 57)
            ]),
      ),
    );

    final cajaRosa = Transform.rotate(
        angle: -pi / 5.9,
        child: Container(
            height: 360.0,
            width: 360.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90.0),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(236, 98, 188, 1.0),
                  Color.fromRGBO(241, 142, 172, 1.0)
                ]))));

    return Stack(
      children: [gradiente, Positioned(top: -100.0, child: cajaRosa)],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text(
                'Classify this transaction into a particular category ~María Can',
                style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 30.0,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.bubble_chart,
              size: 30.0,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle,
              size: 30.0,
            ),
            label: ''),
      ]),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotomRedondeado(Colors.blue, Icons.border_all, 'General'),
          _crearBotomRedondeado(Colors.purpleAccent, Icons.directions_bus, 'Bus'),
        ]),
        TableRow(children: [
          _crearBotomRedondeado(Colors.pinkAccent, Icons.shop, 'Buy'),
          _crearBotomRedondeado(Colors.orange, Icons.insert_drive_file, 'File'),
        ]),
        TableRow(children: [
          _crearBotomRedondeado(Colors.blueAccent, Icons.movie_filter, 'Entertaimer'),
          _crearBotomRedondeado(Colors.green, Icons.cloud, 'Grocery'),
        ]),
        TableRow(children: [
          _crearBotomRedondeado(Colors.red, Icons.collections, 'Photos'),
          _crearBotomRedondeado(Colors.teal, Icons.help_outline, 'Help'),
        ])
      ],
    );
  }

  Widget _crearBotomRedondeado( Color color, IconData icono, String texto) {
    
    return BackdropFilter(
      filter: ImageFilter.blur( sigmaX: 0.5, sigmaY: 0.5),
      child: Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0) 
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox( height: 5.0 ),
            CircleAvatar(
              backgroundColor: color,
              radius: 35.0,
            child: Icon( icono, color: Colors.white, size: 30),
            ),
            Text(texto , style: TextStyle(color: color)),
            SizedBox( height: 5.0 )
          ],
        ),
      ),
    );
  }
}
