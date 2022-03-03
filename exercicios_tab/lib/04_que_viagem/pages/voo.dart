import 'package:flutter/material.dart';

class Voo extends StatelessWidget {
  const Voo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Text(
            "PARTIDA",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Abril 26, 2022",
            style: TextStyle(color: Colors.black54),
          ),

          const SizedBox(height: 50),
          //destino
          Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text(
                        "GRU",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Guarulhos, Brazil",
                        style: TextStyle(fontSize: 14, color: Colors.black45),
                      ),
                    ],
                  ),
                  const RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.airplanemode_active_rounded,
                      size: 35,
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "OPO",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Porto, Portugal",
                        style: TextStyle(fontSize: 14, color: Colors.black45),
                      ),
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
