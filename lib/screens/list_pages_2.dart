import 'package:flutter/material.dart';

class ListPages2Screen extends StatelessWidget {
  const ListPages2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Usuarios del Sistema',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.brown[100],
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.brown[100],
        ),
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.circle,
                  color: Colors.red,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.green,
                ),
              ],
            ),
            const Divider(),
            const SizedBox(
              child: ListTile(
                title: Text(
                  'Administracion de Usuarios',
                  style: TextStyle(),
                ),
                subtitle: Text(
                    'La administracion de usuarios es un campo amplio en el que se administran los accesos a los usuarios '),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
