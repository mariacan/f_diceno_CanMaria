import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Column(
          children: [
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      )
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://st3.depositphotos.com/3584689/18864/i/600/depositphotos_188649158-stock-photo-beautiful-scenery-of-the-woman.jpg'),
            height: 200.0,
            fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Lago en un lindo atardeser', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Ubicado en Japón', style: estiloSubTitulo)
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(icon, color: Colors.green, size: 40.0),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Consectetur adipiscing elit. Integer rhoncus enim non ullamcorper finibus. Curabitur consequat neque sit amet vulputate mattis. Ut fermentum ex vitae dignissim rhoncus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras malesuada eros vel maximus tristique. Vestibulum commodo tellus vitae vehicula auctor. Sed efficitur non velit et vulputate. Nunc nibh magna, commodo vel tincidunt nec, elementum quis leo. Integer maximus augue porta felis rutrum, facilisis euismod lectus tristique. ~(MARIA CAN)',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
