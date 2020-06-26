import 'package:flutter/material.dart';
import 'package:sale_spree/screens/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: TextTheme(
          bodyText1:GoogleFonts.poppins(
              fontWeight: FontWeight.w700),
          bodyText2: GoogleFonts.poppins(
              fontWeight: FontWeight.w700),
        ),

      ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      home: LoginPage(),
    );
  }
}
