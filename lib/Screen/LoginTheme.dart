import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTheme extends StatefulWidget {
  @override
  _LoginThemeState createState() => _LoginThemeState();
}

class _LoginThemeState extends State<LoginTheme> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new SafeArea(
            top: false,
            child: new Stack(
              children: <Widget>[
                new Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: backGroundImage(context)),
                new Positioned(
                    left: 30,
                    right: 30,
                    bottom: 10,
                    top: 450,
                    child: pannelloData(context)),
              ],
            )));
  }
}

Widget backGroundImage(BuildContext context) {
  return new Image.asset(
    'immagini/uno.jpg',
    fit: BoxFit.cover,
    /* per miscelare l'immagine con un colore di sfondo posso utilizzare un
    filtro*/
    color: Colors.red,
    colorBlendMode: BlendMode.overlay,
  );
}

Widget pannelloData(BuildContext context) {
  return new Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      decoration: new BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: new BorderRadius.only(
            topLeft: new Radius.circular(50),
            topRight: new Radius.circular(50),
            bottomLeft: new Radius.circular(50)),
        border:
            Border.all(color: Theme.of(context).primaryColorLight, width: 3),
      ),
      child: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 10),
        children: <Widget>[
          primaRiga(),
          secondaRiga(),
          new SizedBox(
            height: 20,
          ),
          terzaRiga(),
          new SizedBox(
            height: 20,
          ),
          login(context),
          new SizedBox(
            height: 20,
          ),
          newAccount(context),
          new SizedBox(
            height: 30,
          ),
          skip(context),
        ],
      ));
}

Widget primaRiga() {
  return new Text(
    "Find Creative jobs and",
    textAlign: TextAlign.center,
    style: new TextStyle(fontSize: 16),
  );
}

Widget secondaRiga() => new Text("Expresss your Best Self",
    textAlign: TextAlign.center,
    style: GoogleFonts.carterOne(
      fontWeight: FontWeight.bold,
      fontSize: 25,
    ));

Widget terzaRiga() => new Text(
    "Ideas come from a workspace you enjoy being in and they "
    "push you to become a better version of yourself",
    textAlign: TextAlign.center,
    style: new TextStyle(fontSize: 16));

Widget login(BuildContext context) {
  return new Container(
      height: 70,
      child: OutlinedButton(
        child: Text('Login NOW'),
        style: OutlinedButton.styleFrom(
            primary: Theme.of(context).primaryColorLight,
            backgroundColor: Theme.of(context).primaryColor,
            side: BorderSide(
                color: Theme.of(context).primaryColorLight, width: 3),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20))),
        onPressed: () {
          print('Pressed');
        },
      ));
}

/* in questo pulsante voglio avere il testo con il fontFAMILY base di FLutter
 ovvero RObot, quindi posso usare la classe Theme per modificare
 dinamicamente la fontFamily
 */
Widget newAccount(BuildContext context) => new Theme(
    data: Theme.of(context).copyWith(
        textTheme: Theme.of(context).textTheme.apply(fontFamily: "Roboto")),
    child: new Container(
        height: 70,
        child: new MaterialButton(
            onPressed: () {},
            minWidth: double.infinity,
            height: 70,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20)),
            color: Theme.of(context).primaryColorLight,
            child: new Text(
              'Create a NEW Account',
              style: new TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ))));

Widget skip(BuildContext context) {
  return new Row(mainAxisAlignment: MainAxisAlignment.end, children: [
    new MaterialButton(
      onPressed: () => print('SALTA direttamente alla Home '
          'PAGE'),
      minWidth: 50,
      height: 30,
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(20)),
      color: Colors.green,
      child: new Text('SKIP',
          style:  GoogleFonts.kadwa(color: Theme.of(context)
              .primaryColorLight,
              ),),
    )
  ]);
}
