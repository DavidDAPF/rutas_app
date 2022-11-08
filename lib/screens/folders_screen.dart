import 'package:flutter/material.dart';
import 'package:rutas_app/widgets/widgets.dart';

import '../data/data_class.dart';

class FolderScreen extends StatelessWidget {
  const FolderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD7CCC8),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.brown[200],
              expandedHeight: 200,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Container(
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    'Carpetas y directorios',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                background: const Image(
                  image: AssetImage('assets/folderimg2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: ListView.separated(
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
        ),
      ),
    );
  }
}
