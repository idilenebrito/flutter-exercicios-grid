import 'package:exercicios_tab/01_tab_fixa/resources/Strings.dart';
import 'package:flutter/cupertino.dart';

class Passarinhos extends StatelessWidget {
  const Passarinhos({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(Strings.cachorros),
    );
  }
}