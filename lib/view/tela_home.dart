// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

// STATEFUL
class TelaHome extends StatefulWidget {
  const TelaHome({Key? key}) : super(key: key);

  @override
  _TelaHomeState createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  var user = 'admin';


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
                      //Bem Vindo
                      Text(
                        'Bem vindo, ${user}',
                        style:
                            TextStyle(fontSize: 26, color: Color(0xff0E392E)),
                        textAlign: TextAlign.center,
                      ),
                      //Espaço
                      SizedBox(height: 25),
                      //LOGO HORAMED
                      Image.asset(
                        'lib/images/horamedlogoverde.png',
                        height: 90,
                      ),
                      //Espaço
                      SizedBox(height: 25),
                      //HOME
                      Text(
                        'Home',
                        style:
                            TextStyle(fontSize: 26, color: Color(0xff0E392E)),
                        textAlign: TextAlign.center,
                      ),
                      //Espaço
                      SizedBox(height: 25),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            'TelaCadastroMed',
                          );
                        },
                        icon: Icon(Icons.add),
                        label: Text('Cadastrar Medicamento'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff0E392E),
                          minimumSize: Size(double.infinity, 50),
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                      SizedBox(height: 25),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            'TelaListaMed',
                          );
                        },
                        icon: Icon(Icons.list),
                        label: Text('Ver Lista de Medicamentos'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff0E392E),
                          minimumSize: Size(double.infinity, 50),
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                      SizedBox(height: 25),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            'TelaATomar',
                          );
                        },
                        icon: Icon(Icons.medical_services),
                        label: Text('Medicamentos a Tomar'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff0E392E),
                          minimumSize: Size(double.infinity, 50),
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.centerLeft,
                        ),
                      ),

                      SizedBox(height: 25),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            'TelaPerfil',
                          );
                        },
                        icon: Icon(Icons.person),
                        label: Text('Perfil'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff0E392E),
                          minimumSize: Size(double.infinity, 50),
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.centerLeft,
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
}
