// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//STATEFULL
class TelaEsqueciSenha extends StatefulWidget {
  const TelaEsqueciSenha({super.key});

  @override
  State<TelaEsqueciSenha> createState() => _TelaEsqueciSenhaState();
}

class _TelaEsqueciSenhaState extends State<TelaEsqueciSenha> {
  var emailcadastrado = 'admin@admin.com';

  var txtEmailCadastrado = TextEditingController();

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
                      'lib/images/horamedlogoverde.png',
                      height: 90,
                    ),
                    //Espaço
                    SizedBox(height: 25),
                    //
                    //Esqueci minha senha
                    //
                    Text(
                      'Esqueci minha senha',
                      style: TextStyle(fontSize: 26, color: Color(0xff0E392E)),
                      textAlign: TextAlign.center,
                    ),
                    //Espaço
                    SizedBox(height: 25),
                    //TextField para inserir email
                    TextField(
                      controller: txtEmailCadastrado,
                      decoration: InputDecoration(
                        labelText: 'Email Cadastrado',
                        labelStyle:
                            TextStyle(fontSize: 18, color: Color(0xff0E392E)),
                        prefixIcon: Icon(Icons.email, color: Color(0xff0E392E)),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff0E392E), width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff3EFFD1), width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    //Espaço
                    SizedBox(height: 25),
                    //Texto
                    Text(
                      'Preencha o campo com email cadastrado para receber um código pelo email para poder recuperar sua senha.',
                      style: TextStyle(fontSize: 16, color: Color(0xff0E392E)),
                      textAlign: TextAlign.center,
                    ),
                    //Espaço
                    SizedBox(height: 25),

                    //Botão para enviar email ao email cadastrado
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff0E392E)),
                        //Evento
                        onPressed: () {
                          if (txtEmailCadastrado.text.isNotEmpty) {
                            if (txtEmailCadastrado.text == emailcadastrado) {
                              mensagem(
                                  'Solicitação para redefinir senha enviado');
                              Future.delayed(Duration(seconds: 2), () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Mensagem'),
                                      content: Text('Recebeu o código?'),
                                      actions: <Widget>[
                                        TextButton(
                                          child: Text('NÃO'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        TextButton(
                                          child: Text('SIM'),
                                          onPressed: () {
                                            Navigator.pushReplacementNamed(
                                              context,
                                              'TelaRedefinirSenha',
                                            );
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              });
                            } else {
                              mensagem('Email não cadastrado');
                            }
                          } else {
                            mensagem('Preencha o campo!');
                          }
                        },
                        //Conteúdo
                        child: Text('Recuperar Senha'),
                      ),
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

  mensagem(msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: Duration(seconds: 1),
      content: Text(msg),
    ));
  }
}
