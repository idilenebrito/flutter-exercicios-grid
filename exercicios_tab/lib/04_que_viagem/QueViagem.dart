import 'package:exercicios_tab/04_que_viagem/pages/mapa.dart';
import 'package:exercicios_tab/04_que_viagem/pages/passeios.dart';
import 'package:exercicios_tab/04_que_viagem/pages/voo.dart';
import 'package:exercicios_tab/04_que_viagem/resources/Strings.dart';
import 'package:flutter/material.dart';

const Color _blueColor = Color.fromARGB(255, 8, 102, 209);

class QueViagem extends StatefulWidget {
  const QueViagem({Key? key}) : super(key: key);

  @override
  State<QueViagem> createState() => _QueViagemState();
}

class _QueViagemState extends State<QueViagem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              Strings.title,
              style: TextStyle(
                color: _blueColor,
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 186, 59),
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: _blueColor,
              tabs: [
                tab("VOO", Icons.airplanemode_active_rounded),
                tab("PASSEIOS", Icons.shopping_bag_rounded),
                tab("MAPA", Icons.explore_rounded),
              ],
            ),
          ),
          body: const TabBarView(children: [
            Voo(),
            Passeios(),
            Mapa(),
          ] //TabBarview
              ),
        ),
      ),
    );
  }
}

Tab tab(String title, IconData icon) {
  return Tab(
    child: Text(
      title,
      style: const TextStyle(color: _blueColor, fontSize: 16),
    ),
    icon: Icon(
      icon,
      color: _blueColor,
      size: 30,
    ),
  );
}
