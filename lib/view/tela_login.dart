// ignore_for_file: prefer_const_constructors

import 'package:appp1_fabiohcrocetti/model/usuario.dart';
import 'package:flutter/material.dart';

//STATEFULL
class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  var email = 'admin@admin.com';
  var senha = 'admin';

  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Image.asset(
                'lib/images/horamedlogoverde.png',
                height: 150.0,
                width: 150.0,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffDADADA),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: txtEmail,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  fontSize: 18, color: Color(0xff0E392E)),
                              prefixIcon:
                                  Icon(Icons.email, color: Color(0xff0E392E)),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff0E392E), width: 2.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff3EFFD1), width: 2.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: txtSenha,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Senha',
                              labelStyle: TextStyle(
                                  fontSize: 18, color: Color(0xff0E392E)),
                              prefixIcon:
                                  Icon(Icons.star, color: Color(0xff0E392E)),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff0E392E), width: 2.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff3EFFD1), width: 2.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        //Botao Login
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff0E392E)),
                            //Evento
                            onPressed: () {
                              if (txtEmail.text.isEmpty ||
                                  txtSenha.text.isEmpty) {
                                mensagem('Preencha os campos Email e Senha');
                              }else {
                                //verificar base
                                if (txtEmail.text == email &&
                                    txtSenha.text == senha) {
                                  mensagem('Logando...');
                                  Future.delayed(Duration(seconds: 2), () {
                                    Navigator.pushNamed(
                                      context,
                                      'TelaMenu',
                                    );
                                  });
                                } else {
                                  mensagem('Email ou Senha Incorreta');
                                }
                              } 
                            },
                            //Conteúdo
                            child: Text('Login'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextButton(
                            //Evento
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                'TelaEsqueciSenha',
                              );
                            },
                            //Conteúdo
                            child: Text(
                              'Esqueci minha Senha',
                              style: TextStyle(color: Color(0xff0E392E)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextButton(
                            //Evento
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                'TelaCadastrar',
                              );
                            },
                            //Conteúdo
                            child: Text(
                              'Cadastrar-se',
                              style: TextStyle(color: Color(0xff0E392E)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextButton(
                            //Evento
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                'TelaSobre',
                              );
                            },
                            //Conteúdo
                            child: Text(
                              'Sobre',
                              style: TextStyle(color: Color(0xff0E392E)),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  mensagem(msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: Duration(seconds: 1),
      content: Text(msg),
    ));
  }
}
