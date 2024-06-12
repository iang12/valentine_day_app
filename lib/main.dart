import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:valentine_day_app/splash_page.dart';

void main() {
  runApp(const ValentineDayApp());
}

class ValentineDayApp extends StatelessWidget {
  const ValentineDayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: const ColorScheme.light()).copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: GoogleFonts.pacifico(),
          ),
        ),
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.pacifico(),
          bodySmall: GoogleFonts.pacifico(),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.pacifico(fontSize: 20),
        ),
      ),
      home: const SplashPage(),
    );
  }
}
