// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'package:appp1_fabiohcrocetti/model/medicamento.dart';

//STATEFULL
class TelaCadastroMed extends StatefulWidget {
  const TelaCadastroMed({Key? key}) : super(key: key);

  @override
  _TelaCadastroMedState createState() => _TelaCadastroMedState();
}

class _TelaCadastroMedState extends State<TelaCadastroMed> {
var txtNome = TextEditingController();
  var txtDosagem = TextEditingController();
  var txtFrequencia = TextEditingController();
  var txtHorarios = TextEditingController();


  Medicamento medicamento = Medicamento('', '', '', []);

  int paginaAtual = 1;

  void aoSelecionarPagina(int pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

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
                    //Cad Med
                    //
                    Text(
                      'Cadastro Medicamento',
                      style: TextStyle(fontSize: 26, color: Color(0xff0E392E)),
                      textAlign: TextAlign.center,
                    ),
                    //Espaço
                    SizedBox(height: 25),
                    //cadastro medicamento...
                    TextFormField(
                      controller: txtNome,
                      decoration: InputDecoration(
                        labelText: 'Nome do medicamento', labelStyle:
                              TextStyle(fontSize: 18, color: Color(0xff0E392E)),
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
                      onChanged: (value) {
                        setState(() {
                          medicamento.nome = value;
                        });
                      },
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      controller: txtDosagem,
                      decoration: InputDecoration(
                        labelText: 'Dosagem',
                         labelStyle:
                              TextStyle(fontSize: 18, color: Color(0xff0E392E)),
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
                      onChanged: (value) {
                        setState(() {
                          medicamento.dosagem = value;
                        });
                      },
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      controller: txtFrequencia,
                      decoration: InputDecoration(
                        labelText: 'Frequência',
                         labelStyle:
                              TextStyle(fontSize: 18, color: Color(0xff0E392E)),
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
                      onChanged: (value) {
                        setState(() {
                          medicamento.frequencia = value;
                        });
                      },
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      controller: txtHorarios,
                      decoration: InputDecoration(
                        labelText: 'Horários (separe por vírgula)',
                        labelStyle:
                              TextStyle(fontSize: 18, color: Color(0xff0E392E)),
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
                      onChanged: (value) {
                        setState(() {
                          medicamento.horarios = value.split(',');
                        });
                      },
                    ),
                    SizedBox(height: 25),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff0E392E)),
                      onPressed: () {
                        //salvar medicamento
                        mensagem('Salvo...');
                                txtNome.clear();
                                txtDosagem.clear();
                                txtFrequencia.clear();
                                txtHorarios.clear();
                      },
                      child: Text('Salvar'),
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

  
