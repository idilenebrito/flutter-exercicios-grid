import 'package:exercicios_tab/04_que_viagem/resources/Images.dart';
import 'package:flutter/cupertino.dart';

class Mapa extends StatelessWidget {
  const Mapa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Image.network(Images.mapa),
      ],
    );
  }
}
