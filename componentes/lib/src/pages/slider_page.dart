import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valor =100;
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
            title: Text('Slider - Check')
          ),
        body: Container(
          padding: EdgeInsets.only(
            top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              Expanded(
                child: _crearImagen()
                ),
            ],
          ),
        ),
      );
  }
  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valor,
      min: 10.0,
      max: 400.0, 
      onChanged: ( obj ){
        setState(() {
          _valor = obj;
        });
        
      }
    );
  }
  Widget _crearImagen(){
    return Image(
        image: NetworkImage('https://scontent.fgye3-1.fna.fbcdn.net/v/t1.0-9/97551928_3439363512744618_5320105556386512896_n.jpg?_nc_cat=1&_nc_sid=8bfeb9&_nc_eui2=AeGpR58cx9HxXQqaYZ5FKVzRDx6G6J0SXlgPHobonRJeWHoaIk5FxUlnWUxeAQCVSCOsmFfcluv4t-cGZrnftsow&_nc_oc=AQlhLVRJkGalHBRN0_usBW6R1JrSWlV_69be2s2Awukn6CU2tlcyVQBmrZxHW-IQg6xllLxsMwy1Mn_NGx5vuuzF&_nc_ht=scontent.fgye3-1.fna&oh=89c01a9d0e3c0c99420a5f7f55c3b207&oe=5EF3C9BB'),
        width: _valor,
        fit: BoxFit.contain,
      );
  }
}