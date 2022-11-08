import 'package:flutter/material.dart';
import 'package:rutas_app/theme/app_theme.dart';
import 'package:rutas_app/widgets/sistem_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFD7CCC8),
        appBar: AppBar(
          backgroundColor: Colors.brown[200],
          title: const Text(
            'Ruta de Aprendizaje linux',
          ),
          elevation: 0,
        ),
        body: const InfoSistem());
  }
}
