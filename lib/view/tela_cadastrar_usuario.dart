// ignore_for_file: prefer_const_constructors

import 'package:appp1_fabiohcrocetti/model/usuario.dart';
import 'package:flutter/material.dart';

//STATEFULL
class TelaCadastrar extends StatefulWidget {
  const TelaCadastrar({super.key});

  @override
  State<TelaCadastrar> createState() => _TelaCadastrarState();
}

class _TelaCadastrarState extends State<TelaCadastrar> {
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtConfirmarSenha = TextEditingController();

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
                  child: Column(
                    children: [
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
                      //Cadastro
                      //
                      Text(
                        'Cadastre-se',
                        style:
                            TextStyle(fontSize: 26, color: Color(0xff0E392E)),
                        textAlign: TextAlign.center,
                      ),
                      //Espaço
                      SizedBox(height: 25),
                      //CAMPO DE TEXTO
                      TextField(
                        controller: txtNome,
                        decoration: InputDecoration(
                          labelText: 'Nome',
                          labelStyle:
                              TextStyle(fontSize: 18, color: Color(0xff0E392E)),
                          prefixIcon:
                              Icon(Icons.person, color: Color(0xff0E392E)),
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
                      SizedBox(height: 25),
                      //CAMPO DE TEXTO
                      TextField(
                        controller: txtEmail,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle:
                              TextStyle(fontSize: 18, color: Color(0xff0E392E)),
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
                      SizedBox(height: 25),
                      //CAMPO DE TEXTO
                      TextField(
                        controller: txtSenha,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle:
                              TextStyle(fontSize: 18, color: Color(0xff0E392E)),
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
                      SizedBox(height: 25),
                      //CAMPO DE TEXTO
                      TextField(
                        controller: txtConfirmarSenha,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirmar Senha',
                          labelStyle:
                              TextStyle(fontSize: 18, color: Color(0xff0E392E)),
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
                      SizedBox(height: 25),
                      //BOTÃO> ElevatedButton; OutlinedButton; TextButton
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff0E392E)),
                          //Evento
                          onPressed: () {
                            if (txtNome.text.isNotEmpty &&
                                txtEmail.text.isNotEmpty &&
                                txtSenha.text.isNotEmpty &&
                                txtConfirmarSenha.text.isNotEmpty) {
                              //Adicionar um novo contato
                              if (txtSenha.text == txtConfirmarSenha.text) {
                                setState(() {
                                  Usuario(txtNome.text, txtEmail.text,
                                      txtConfirmarSenha.text);
                                });
                                mensagem('Cadastrado com sucesso!');
                                Future.delayed(Duration(seconds: 2), () {
                                  Navigator.pop(
                                    context,
                                  );
                                });
                              } else {
                                mensagem(
                                    'Senha e Confirmar Senha estão diferentes');
                                txtSenha.clear();
                                txtConfirmarSenha.clear();
                              }
                            } else {
                              mensagem('Preencha todos os campos!');
                            }
                          },
                          //Conteúdo
                          child: Text('Cadastrar'),
                        ),
                      ),
                    ],
                  ),
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
