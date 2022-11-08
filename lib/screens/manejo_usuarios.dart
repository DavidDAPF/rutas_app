import 'package:flutter/material.dart';
import 'package:rutas_app/widgets/tarjetas.dart';

class AdminUsersScreen extends StatelessWidget {
  const AdminUsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Container(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  'Administracion de directorios',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              background: const Image(
                image: AssetImage('assets/image 1carpeta.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Card(
                      color: Colors.brown[50],
                      shadowColor: Colors.black,
                      elevation: 10,
                      child: SizedBox(
                          width: double.infinity,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                const Text('\$_> comando'),
                                const Text(
                                    '//este seria la parte de los comentarios')
                              ],
                            ),
                          )),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
