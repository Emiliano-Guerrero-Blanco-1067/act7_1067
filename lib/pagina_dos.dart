import 'package:flutter/material.dart';

//! AnimatedCrossFade
class PantallaDos extends StatefulWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffbc8181), // Fondo azul
        title: const Center(
          child: Text(
            'pantalla Dos',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Image.network(
              'https://raw.githubusercontent.com/Emiliano-Guerrero-Blanco-1067/Videoclub_imagenes_app_flutter/refs/heads/main/media67b70cd98fe9b844894570.jpg',
              width: double.infinity,
            ),
            secondChild: Image.network(
              'https://raw.githubusercontent.com/Emiliano-Guerrero-Blanco-1067/Videoclub_imagenes_app_flutter/refs/heads/main/media67b70cd98fe9b844894570.jpg',
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
        ],
      ),
    );
  }
}
