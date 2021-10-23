import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logintheme/Screen/LoginTheme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    SystemChrome.setSystemUIOverlayStyle(
        new SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        /*tema scuro: i testi saranno scritti in bianco */
        brightness: Brightness.dark,

        //modifica la statusBAr, APPbar, colori pulsanti
        primaryColor: Colors.black,
        //versione light
        primaryColorLight: Colors.white,

        //Brightness.light,--> tema chiaro:  testi in nero

       /*     brightness: Brightness.light,
        primaryColor: Colors.white,
        primaryColorLight: Colors.black,
*/
        //primarySwatch: Colors.blue,

        //roboto è il font di base di flutter
        fontFamily: "NotoSerif",

      ),
      home: new LoginTheme(),
    );
  }
}
