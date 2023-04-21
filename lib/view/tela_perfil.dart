// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

//STATEFULL
class TelaPerfil extends StatefulWidget {
  const TelaPerfil({super.key});

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  var senhaAntiga = 'admin';

  bool _15minantes = false;
  bool _5minantes = false;
  bool _5mindepois = false;
  bool _15mindepois = false;

  var txtSenhaAntiga = TextEditingController();
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
                    //Perfil
                    //
                    Text(
                      'Perfil',
                      style: TextStyle(fontSize: 26, color: Color(0xff0E392E)),
                      textAlign: TextAlign.center,
                    ),
                    //Espaço
                    SizedBox(height: 25),
                    Divider(),

                    //Espaço
                    SizedBox(height: 25),
                    //
                    //Perfil
                    //
                    Text(
                      'Redefinir Senha',
                      style: TextStyle(fontSize: 26, color: Color(0xff0E392E)),
                      textAlign: TextAlign.center,
                    ), //Espaço
                    SizedBox(height: 25),
                    TextField(
                      controller: txtSenhaAntiga,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'SenhaAntiga',
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
                    SizedBox(height: 15),
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
                    SizedBox(height: 15),
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
                    SizedBox(height: 15),
                    //Botão para confirmar redefinição de senha
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff0E392E)),
                        //Evento
                        onPressed: () {
                          if (txtSenhaAntiga.text.isNotEmpty) {
                            if (txtSenhaAntiga.text == senhaAntiga) {
                              if (txtNovaSenha.text ==
                                  txtConfirmarNovaSenha.text) {
                                mensagem('Nova senha cadastrada.');
                              } else {
                                mensagem('Senha e Confirmar Senha diferentes.');
                              }
                            } else {
                              mensagem('Senha Antiga incorreta.');
                            }
                          } else {
                            mensagem('Preencha os campos!');
                          }
                        },
                        //Conteúdo
                        child: Text('Recuperar Senha'),
                      ),
                    ),

                    //Espaço
                    SizedBox(height: 25),
                    Divider(),

                    //Espaço
                    SizedBox(height: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //
                        //Perfil
                        //
                        Text(
                          'Lembretes',
                          style:
                              TextStyle(fontSize: 26, color: Color(0xff0E392E)),
                          textAlign: TextAlign.center,
                        ),
                        //Espaço
                        SizedBox(height: 25),
                        CheckboxListTile(
                          title: Text(
                              'Lembrete a cada 15 min após o horário do remédio não tomado'),
                          value: _15mindepois,
                          onChanged: (value) {
                            setState(() {
                              _15mindepois = value!;
                            });
                          },
                          activeColor: Color(0xff0E392E),
                        ),
                        SizedBox(height: 15),
                        CheckboxListTile(
                          title: Text(
                              'Lembrete a cada 5 min após o horário do remédio não tomado'),
                          value: _5mindepois,
                          onChanged: (value) {
                            setState(() {
                              _5mindepois = value!;
                            });
                          },
                          activeColor: Color(0xff0E392E),
                        ),
                        SizedBox(height: 15),
                        CheckboxListTile(
                          title: Text(
                              'Lembrete 5 min antes do horário do remédio'),
                          value: _5minantes,
                          onChanged: (value) {
                            setState(() {
                              _5minantes = value!;
                            });
                          },
                          activeColor: Color(0xff0E392E),
                        ),
                        SizedBox(height: 15),
                        CheckboxListTile(
                          title: Text(
                              'Lembrete 15 min antes do horário do remédio'),
                          value: _15minantes,
                          onChanged: (value) {
                            setState(() {
                              _15minantes = value!;
                            });
                          },
                          activeColor: Color(0xff0E392E),
                        ),
                      ],
                    )
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
