// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//STATEFULL
class TelaSobre extends StatefulWidget {
  const TelaSobre({super.key});

  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horamed'),
        backgroundColor: Color(0xff0E392E),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff3EFFD1),
              Color(0xff0E392E),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffDADADA),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(children: [
                    //
                    //LOGO HORAMED
                    //
                    Image.asset(
                      'lib/images/horamedlogo.png',
                      height: 90,
                    ),
                    //Espaço
                    SizedBox(height: 25),
                    //
                    //SOBRE
                    //
                    Text(
                      'Sobre',
                      style: TextStyle(fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                    //
                    //TEXTO SOBRE
                    //
                    SizedBox(height: 10),
                    Text(
                      'O aplicativo Horamed, é uma ferramenta útil para ajudar as pessoas a lembrarem de tomar seus medicamentos de forma regular e organizada, os usuários podem cadastrar seus medicamentos, definir os horários para tomá-los e receber lembretes personalizados na tela do celular. Além disso, o aplicativo também permite que os usuários registrem quando tomaram seus remédios, para que possam acompanhar seu progresso e garantir que não percam uma dose.\n\nCom uma interface simples e intuitiva. É uma ótima opção para pessoas que precisam tomar vários medicamentos diferentes ou que têm dificuldade em lembrar de tomar seus remédios no horário correto.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),

                    //
                    //Logo - Texto
                    //
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Image.asset(
                          'lib/images/f7logo.png',
                          height: 90,
                        ),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: Text(
                            'Desenvolvido pela F7 Soluções Tecnologicas, de autoria de Fabio Henrique Crocetti.',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
