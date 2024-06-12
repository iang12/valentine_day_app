import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:valentine_day_app/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5)).then(
      (_) async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const HomePage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Align(
                alignment: Alignment.center,
                child: Lottie.asset('assets/splash.json', width: 300)),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: MediaQuery.of(context).size.height * 0.22,
            child: const Text(
              'Carregando...',
              style: TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
