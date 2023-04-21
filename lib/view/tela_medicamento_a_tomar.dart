// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:appp1_fabiohcrocetti/model/medicamento.dart';

class TelaATomar extends StatefulWidget {
  const TelaATomar({Key? key}) : super(key: key);

  @override
  _TelaATomarState createState() => _TelaATomarState();
}

class _TelaATomarState extends State<TelaATomar> {
  List<Medicamento> medicamentos = [    Medicamento('Paracetamol', '500mg', 'Diariamente', ['08:00', '14:00', '20:00']),
    Medicamento('Amoxicilina', '250mg', 'De 8 em 8 horas', ['06:00', '14:00', '22:00']),
    Medicamento('Omeprazol', '20mg', 'Antes do almoço', ['11:00']),
  ];

  Map<String, List<Medicamento>> medicamentosPorHorario = {};
  List<String> horarios = [];

  @override
  void initState() {
    super.initState();

    for (Medicamento medicamento in medicamentos) {
      for (String horario in medicamento.horarios) {
        if (medicamentosPorHorario.containsKey(horario)) {
          medicamentosPorHorario[horario]?.add(medicamento);
        } else {
          medicamentosPorHorario[horario] = [medicamento];
        }
      }
    }

    horarios = medicamentosPorHorario.keys.toList();
    horarios.sort();

    setState(() {});
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
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffDADADA),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Image.asset(
                      'lib/images/horamedlogoverde.png',
                      height: 90,
                    ),
                    SizedBox(height: 25),
                    Text(
                      'À Tomar',
                      style: TextStyle(
                        fontSize: 26,
                        color: Color(0xff0E392E),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 25),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: horarios.length,
                      itemBuilder: (context, index) {
                        String horario = horarios[index];
                        List<Medicamento>? medicamentosDoHorario =
                            medicamentosPorHorario[horario];
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          margin: EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Horário: $horario',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Column(
                                children:
                                    medicamentosDoHorario!.map((medicamento) {
                                  return ListTile(
                                    title: Text(medicamento.nome),
                                    trailing: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff0E392E)),
                                      onPressed: () {
                                        
                                        mensagem('Medicamento Tomado');
                                      },
                                      child: Text('Tomei'),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _tomeiMedicamento(Medicamento medicamento) {
    // Aqui você pode adicionar a lógica para marcar o medicamento como "tomei"
    mensagem('Você tomou o medicamento ${medicamento.nome}');
  }

  mensagem(msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: Duration(seconds: 1),
      content: Text(msg),
    ));
  }
}
