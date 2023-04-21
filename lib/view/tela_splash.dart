// ignore_for_file: prefer_const_constructors

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import 'tela_login.dart';

class TelaSplash extends StatelessWidget {
  const TelaSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('lib/images/horamedlogo.png'),
      logoWidth: 100,      
      title: Text(
        textAlign: TextAlign.center,
        'by \n\n F7 - Soluções Tecnologicas',
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
      gradientBackground: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff3EFFD1),
            Color(0xff0E392E),
          ],
        ),
      showLoader: true,
      loadingText: Text('Carregando...'),
      durationInSeconds: 3,
      navigator: TelaLogin(),
    );
  }
}
