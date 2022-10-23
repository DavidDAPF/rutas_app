import 'package:flutter/material.dart';
import 'package:rutas_app/data/data_class.dart';

class ListPages1Screen extends StatelessWidget {
  const ListPages1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Informacion del Sistema',
              style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          foregroundColor: Colors.brown[200],
          elevation: 0,
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: Enlace.datos.length,
            itemBuilder: ((context, index) {
              return Card(
                elevation: 5,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                margin: const EdgeInsets.all(15),
                color: Colors.brown[50],
                child: InkWell(
                  onTap: () {
                    /*  */
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        //color: Colors.greenAccent,
                        child: const Text(
                          'Primer container dentro de un Card',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(5),
                        child: Column(
                          children: [
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
                            const Divider(),
                            ListTile(
                              title: Text(
                                Enlace.datos[index].comando,
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                Enlace.datos[index].comentario,
                                style: const TextStyle(fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            })));
  }
}
