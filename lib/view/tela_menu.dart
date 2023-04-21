// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'package:appp1_fabiohcrocetti/view/tela_home.dart';
import 'package:appp1_fabiohcrocetti/view/tela_medicamento_a_tomar.dart';
import 'package:appp1_fabiohcrocetti/view/tela_perfil.dart';
import 'package:flutter/material.dart';

class TelaMenu extends StatefulWidget {
  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  var paginaAtual = 0;
  var pageController = PageController();

  // Lista de páginas
  List<Widget> pages = [
    TelaHome(),
    TelaATomar(),
    TelaPerfil(),
  ];

  void aoSelecionarPagina(int index) {
    setState(() {
      paginaAtual = index;
    });
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages, // Usando a lista de páginas
        onPageChanged: (index) {
          setState(() {
            paginaAtual = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff0E392E),
        selectedItemColor: Color(0xff3EFFD1),
        unselectedItemColor: Color(0xffDADADA),
        currentIndex: paginaAtual,
        onTap: aoSelecionarPagina,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'À Tomar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
