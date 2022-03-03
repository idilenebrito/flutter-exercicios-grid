import 'package:exercicios_tab/01_tab_fixa/resources/Images.dart';
import 'package:exercicios_tab/01_tab_fixa/resources/Strings.dart';
import 'package:flutter/material.dart';
import 'package:exercicios_tab/01_tab_fixa/pages/Cachorros.dart';
import 'package:exercicios_tab/01_tab_fixa/pages/Gatos.dart';
import 'package:exercicios_tab/01_tab_fixa/pages/Passarinhos.dart';

class MyFixedTab extends StatefulWidget {
  const MyFixedTab({Key? key}) : super(key: key);

  @override
  _MyFixedTabState createState() => _MyFixedTabState();
}

class _MyFixedTabState extends State<MyFixedTab> {
  List tabs = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF7A86CB),
            title: const Text(Strings.tituloAppBar),
            leading: Image.network(Images.imagemLogo),
            bottom: const TabBar(
              //labelColor: Colors.pink, // cor do texto na lab
              //unselectedLabelColor: Colors.pink, //muda a cor da texto na tab selecionada
              indicatorColor: Color.fromARGB(
                  255, 189, 36, 57), //traço embaixo da tab selecionada
              tabs: [
                Tab(text: Strings.cachorros),
                Tab(text: Strings.gatos),
                Tab(text: Strings.passarinhos),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text(Strings.cachorros)),
              Center(child: Text(Strings.gatos)),
              Center(child: Text(Strings.passarinhos)),
            ],
          ),
        ),
      ),
    );
  }
}
