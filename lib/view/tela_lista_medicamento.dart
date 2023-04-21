// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:appp1_fabiohcrocetti/model/medicamento.dart';

class TelaListaMed extends StatefulWidget {
  
  List<Medicamento> medicamentos = [
    Medicamento(
        'Paracetamol', '500mg', 'Diariamente', ['08:00', '14:00', '20:00']),
    Medicamento(
        'Amoxicilina', '250mg', 'De 8 em 8 horas', ['06:00', '14:00', '22:00']),
    Medicamento('Omeprazol', '20mg', 'Antes do almoço', ['11:00']),
  ];

  TelaListaMed({super.key});

  @override
  _TelaListaMedState createState() => _TelaListaMedState();
}

class _TelaListaMedState extends State<TelaListaMed> {
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
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffDADADA),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  //LOGO HORAMED
                  Image.asset(
                    'lib/images/horamedlogoverde.png',
                    height: 90,
                  ),
                  //Espaço
                  SizedBox(height: 25),
                  //Medicamentos Cadastrados...
                  Text(
                    'Medicamentos cadastrados:',
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff0E392E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25),
                  Expanded(
                    child: ListView.builder(
                      itemCount: widget.medicamentos.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          margin: EdgeInsets.only(bottom: 20),
                          child: ListTile(
                            title: Text(widget.medicamentos[index].nome),
                            subtitle: Text(
                              'Dosagem: ${widget.medicamentos[index].dosagem}\nFrequência: ${widget.medicamentos[index].frequencia}\nHorários: ${widget.medicamentos[index].horarios.join(", ")}',
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, 'TelaCadastroMed');
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    setState(() {
                                      widget.medicamentos.removeAt(index);
                                    });
                                    mensagem(
                                        'Medicamento excluído com sucesso!');
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  mensagem(msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 1),
        content: Text(msg),
      ),
    );
  }
}
