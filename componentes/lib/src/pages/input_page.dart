import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _pw='';
  String _fecha='';
  String _optSelected = 'Volar';
  List<String> _poderes = ['Volar', 'Rayos X', 'Super Fuerza'];

  TextEditingController _inputFieldDateController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Input')
       ),
       body: ListView(
         padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
         children: <Widget>[
           _crearInput(),
           Divider(),
           _crearEmail(),
           Divider(),
           _crearPassword(),
           Divider(),
           _crearFecha(context),
           Divider(),
           _crearDropdown(),
           Divider(),
           _crearPersonas(),
         ],
       ),
    );
  }

  Widget _crearInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letras: ${_nombre.length}'),
        hintText: 'Ingrese sus nombres' ,
        labelText: 'Nombres',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
    );
  }
  Widget _crearEmail(){
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        counter: Text('Letras: ${_email.length}'),
        hintText: 'Ingrese su Email' ,
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),
      onChanged: (valor){
        setState(() {
          _email = valor;
        });
      },
    );
  }
  Widget _crearPassword(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        counter: Text('Letras: ${_pw.length}'),
        hintText: 'Ingrese su contraseña' ,
        labelText: 'Contraseña',
        helperText: 'Solo es la contraseña',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock)
      ),
      onChanged: (valor){
        setState(() {
          _pw = valor;
        });
      },
    );
  }
  
Widget _crearFecha(BuildContext context){
  return TextField(
      //autofocus: true,
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        counter: Text('Letras: ${_fecha.length}'),
        hintText: 'Fecha de nacimiento' ,
        labelText: 'Nacimiento',
        helperText: 'Solo es la fecha',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.date_range)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  } 

  Widget _crearDropdown(){
    return Row(
      children: <Widget>[
        Text('Seleccione un poder:'),
        SizedBox(width: 30.0),
        DropdownButton(
          value: _optSelected,
          items: getOpcionesDropdown(), 
          onChanged: (opt){
            setState(() {
              _optSelected = opt;
            });
          }
        ),
      ],
      
    ); 
    
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown(){
    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((poder){
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return lista;
  }

  Widget _crearPersonas(){
    return ListTile(
      title: Text('Nombre es: $_nombre\nEmail es: $_email\nContraseña es: $_pw'),
      trailing: Text(_optSelected),
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('es','ES')
    );
    if(picked != null){
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }
}