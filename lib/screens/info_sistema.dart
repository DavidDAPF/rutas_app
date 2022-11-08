import 'package:flutter/material.dart';
import 'package:rutas_app/data/data_class.dart';
import 'package:rutas_app/widgets/custom_appBar.dart';
import 'package:rutas_app/widgets/tarjetas.dart';

class InfoSistemaScreen extends StatelessWidget {
  //final AssetImage image = AssetImage('assets/folderimg.png');

  const InfoSistemaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD7CCC8),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const CustomAppBarScreen(
                title: 'Informacion del Sistema',
                image: AssetImage('assets/folderimg.png')),
          ];
        },
        body: const TarjetasScreen(),
      ),
    );
  }
}
