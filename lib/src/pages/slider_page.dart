
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({ Key? key }) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body:Container( 
        child: Column(
          children: <Widget>[
            _crearSllider(),
            _crearCheckBox(),
            _crearSwich(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSllider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider, 
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck) ? null : (valor){
        setState(() {
        _valorSlider = valor;
        });
      },
    );

  }

  Widget _crearCheckBox (){
    /* return Checkbox(
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
        _bloquearCheck = valor!;

        });
      }
    ); */

    return CheckboxListTile(
      title: Text('Bloquear check'),
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
        _bloquearCheck = valor!;

        });
      }
    );

  }

  Widget _crearSwich(){
    return SwitchListTile(
      title: Text('Bloquear check'),
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
        _bloquearCheck = valor!;

        });
      }
    );
  }

  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://s1.1zoom.me/big3/471/Painting_Art_Back_view_Photographer_575380_3840x2400.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

}