// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//STATEFULL
class TelaRedefinirSenha extends StatefulWidget {
  const TelaRedefinirSenha({super.key});

  @override
  State<TelaRedefinirSenha> createState() => _TelaRedefinirSenhaState();
}

class _TelaRedefinirSenhaState extends State<TelaRedefinirSenha> {
  var codigo = '1234';

  var txtCodigo = TextEditingController();
  var txtNovaSenha = TextEditingController();
  var txtConfirmarNovaSenha = TextEditingController();

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
                      'Redefinir senha',
                      style: TextStyle(fontSize: 26, color: Color(0xff0E392E)),
                      textAlign: TextAlign.center,
                    ),
                    //Espaço
                    SizedBox(height: 25),
                    //TextField para inserir codigo
                    TextField(
                      controller: txtCodigo,
                      decoration: InputDecoration(
                        labelText: 'Codigo',
                        labelStyle:
                            TextStyle(fontSize: 18, color: Color(0xff0E392E)),
                        prefixIcon: Icon(Icons.code, color: Color(0xff0E392E)),
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
                    //TextField NovaSenha
                    TextField(
                      controller: txtNovaSenha,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Nova Senha',
                        labelStyle:
                            TextStyle(fontSize: 18, color: Color(0xff0E392E)),
                        prefixIcon: Icon(Icons.star, color: Color(0xff0E392E)),
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
                    //TextField NovaSenha
                    TextField(
                      controller: txtConfirmarNovaSenha,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Confirmar Nova Senha',
                        labelStyle:
                            TextStyle(fontSize: 18, color: Color(0xff0E392E)),
                        prefixIcon: Icon(Icons.star, color: Color(0xff0E392E)),
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
                    //Botão para confirmar redefinição de senha
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff0E392E)),
                        //Evento
                        onPressed: () {
                          if (txtCodigo.text.isNotEmpty) {
                            if (txtCodigo.text == codigo) {
                              if(txtNovaSenha.text == txtConfirmarNovaSenha.text){
                                mensagem('Nova senha cadastrada.');
                                Future.delayed(Duration(seconds: 2), () {
                                  Navigator.pushReplacementNamed(
                                              context,
                                              'TelaLogin',
                                            );
                                },);
                              }else{
                                mensagem('Senha e Confirmar Senha diferentes.');
                              }
                              
                            } else {
                              mensagem('Codigo incorreto.');
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

