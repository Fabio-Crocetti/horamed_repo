// ignore_for_file: prefer_const_constructors

import 'package:appp1_fabiohcrocetti/view/tela_cadastrar_usuario.dart';
import 'package:appp1_fabiohcrocetti/view/tela_cadastro_medicamento.dart';
import 'package:appp1_fabiohcrocetti/view/tela_esqueci_senha.dart';
import 'package:appp1_fabiohcrocetti/view/tela_home.dart';
import 'package:appp1_fabiohcrocetti/view/tela_lista_medicamento.dart';
import 'package:appp1_fabiohcrocetti/view/tela_login.dart';
import 'package:appp1_fabiohcrocetti/view/tela_medicamento_a_tomar.dart';
import 'package:appp1_fabiohcrocetti/view/tela_menu.dart';
import 'package:appp1_fabiohcrocetti/view/tela_perfil.dart';
import 'package:appp1_fabiohcrocetti/view/tela_redefinir_senha.dart';
import 'package:appp1_fabiohcrocetti/view/tela_sobre.dart';
import 'package:appp1_fabiohcrocetti/view/tela_splash.dart';
import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela Splash',
      
      //
      // ROTAS DE NAVEGACAO
      //
      initialRoute: 'TelaSplash',
      routes: {
        'TelaLogin' : (context) => TelaLogin(),
        'TelaSobre' :(context) => TelaSobre(),
        'TelaSplash' :(context) => TelaSplash(),
        'TelaEsqueciSenha' :(context) => TelaEsqueciSenha(),
        'TelaCadastrar' :(context) => TelaCadastrar(),
        'TelaRedefinirSenha' :(context) => TelaRedefinirSenha(),
        'TelaMenu' :(context) => TelaMenu(),
        'TelaHome' :(context) => TelaHome(),
        'TelaCadastroMed' :(context) => TelaCadastroMed(),
        'TelaListaMed' :(context) => TelaListaMed(),
        'TelaATomar' :(context) => TelaATomar(),
        'TelaPerfil' :(context) => TelaPerfil(),
        
      },
    )
  );
}