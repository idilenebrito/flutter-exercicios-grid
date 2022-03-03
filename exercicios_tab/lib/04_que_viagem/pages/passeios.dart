import 'package:exercicios_tab/04_que_viagem/resources/Images.dart';
import 'package:exercicios_tab/04_que_viagem/resources/Strings.dart';
import 'package:flutter/cupertino.dart';

class Passeios extends StatelessWidget {
  const Passeios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                Strings.titlePasseios,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //1 - ponte dom luiz I
              const Text(
                Strings.ponteDLuisI,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Image.network(Images.ponteDLuisI),
              const SizedBox(height: 6),
              const Text(
                Strings.sobrePonteDLuisI,
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              //2-  torre dos clerigos
              const Text(
                Strings.torreDosClerigos,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Image.network(Images.torreDosClerigos),
              const SizedBox(height: 6),
              const Text(
                Strings.sobreTorresDosClerigos,
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              // 3- livraria lello
              const Text(
                Strings.livrariaLello,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Image.network(Images.livrariaLello),
              const SizedBox(height: 6),
              const Text(
                Strings.sobreLivrariaLello,
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ), //column
        ),
      ],
    );
  }
}
