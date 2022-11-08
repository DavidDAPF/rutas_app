import 'package:flutter/material.dart';
import 'package:rutas_app/data/data_class.dart';

class TarjetasScreen extends StatelessWidget {
  const TarjetasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, int index) => const SizedBox(
        height: 20,
      ),
      itemCount: Enlace.datos.length,
      padding: const EdgeInsets.all(10),
      itemBuilder: (BuildContext context, index) {
        return Card(
          color: Colors.brown[50],
          elevation: 10,
          child: Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.end ,
                children: [
                  //circulo de colores
                  Row(
                    children: const [
                      Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: 15,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 15,
                      ),
                    ],
                  ),
                  //fin circulo de colores
                  const Divider(color: Colors.black),
                  ListTile(
                    title: Text(Enlace.datos[index].comando),
                    subtitle: Text(Enlace.datos[index].comentario),
                  )
                ],
              )),
        );
      },
    );
  }
}
