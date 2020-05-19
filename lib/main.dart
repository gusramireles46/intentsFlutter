import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

void main() => runApp(Implicitas());

class Implicitas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Implicitas'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 25,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(Icons.language, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Abrir URL', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        'https://itcelaya.edu.mx/', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: launchURL,
                ),
              ),
            ),
            Card(
              elevation: 25,
              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(
                      Icons.phone_forwarded, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Teléfono', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        '4131069389', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: phoneCall,
                ),
              ),
            ),
            Card(
              elevation: 25,
              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(Icons.sms, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Enviar SMS', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        '4131069389', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: sendSMS,
                ),
              ),
            ),
            Card(
              elevation: 25,
              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(
                      Icons.alternate_email, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Enviar e-mail', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        'Correo: gusramireles46@gmail.com', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: sendMail,
                ),
              ),
            ),
            Card(
              elevation: 25,
              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(
                      Icons.photo_camera, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Tomar foto', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        'Capturar imagen', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: takePhoto,
                ),
              ),
            ),
            Card(
              elevation: 25,
              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(
                      Icons.map, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Abrir Mapa', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        'Dirección: Mi Casa', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: openMaps,
                ),
              ),
            ),
            Card(
              elevation: 25,
              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(
                      LineAwesomeIcons.facebook_f, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Facebook', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        'Mostrar lista de amigos', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: createEvent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void launchURL() async {
    const url = 'http://itcelaya.edu.mx/index.php?r=especialidades/view&id=7';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("No se puede realizar la acción");
    }
  }

  void phoneCall() async {
    const tel = "tel:4131069389";
    if (await canLaunch(tel)) {
      await launch(tel);
    } else {
      print('No se puede realizar la acción');
    }
  }

  void sendSMS() async {
    const smsto = "sms:4131069389";
    if (await canLaunch(smsto)) {
      await launch(smsto);
    } else {
      print('No se puede realizar la acción');
    }
  }

  void sendMail() async {
    final Uri params = Uri(scheme: "mailto",
        path: "gusramireles46@gmail.com",
        query: "subject=Email de prueba &body=Hola Mundo");

    var email = params.toString();
    if (await canLaunch(email)) {
      await launch(email);
    } else {
      print("No se pudo realizar la acción");
    }
  }

  void takePhoto() async {
    await ImagePicker.pickImage(source: ImageSource.camera);
  }

  void openMaps() async{
    const map = "geo:20.542997, -100.685795";
    if(await canLaunch(map)){
      await launch(map);
    } else {
      print("No se puede realizar la acción");
    }
  }

  void createEvent() async {
    final fb = "fb://friends";
    if (await canLaunch(fb)) {
      launch(fb);
    } else {
      print("No se puede realizar la acción");
    }
  }
}