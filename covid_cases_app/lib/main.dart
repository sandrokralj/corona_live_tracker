import 'package:covid_cases_app/constants/constants.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Covid 19 Tracker',
        theme: ThemeData(
          textTheme: GoogleFonts.dmSansTextTheme().apply(displayColor: Colors.black),
          primaryColor: primaryBlack,
        ),
        home: HomePage(),
    );
  }
}

