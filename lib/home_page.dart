import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _buttonNoPositionX = 50;
  double _buttonNoPositionY = 300;
  final Random _random = Random();

  void _moveNoButton() {
    setState(() {
      _buttonNoPositionX = _random.nextDouble() * 300;
      _buttonNoPositionY = _random.nextDouble() * 500;
    });
  }

  void _showCoupleAnimation() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Somos um casal!',
              style: GoogleFonts.pacifico(fontSize: 25),
            ),
            const SizedBox(height: 20),
            Lottie.asset('assets/couple.json', width: 400)
          ],
        ),
      ),
    );
  }

  ButtonStyle _buttonStyle(Color color) {
    return ElevatedButton.styleFrom(
      backgroundColor: color,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quer namorar comigo?',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            left: _buttonNoPositionX,
            top: _buttonNoPositionY,
            child: ElevatedButton(
              style: _buttonStyle(Colors.redAccent),
              onPressed: _moveNoButton,
              child: const Text('Não'),
            ),
          ),
          Center(
            child: ElevatedButton(
              style: _buttonStyle(Colors.greenAccent),
              onPressed: _showCoupleAnimation,
              child: const Text('Sim'),
            ),
          ),
        ],
      ),
    );
  }
}
