import 'package:flutter/material.dart';
import 'package:rutas_app/theme/app_theme.dart';
import '../router/app_routes.dart';
//import 'package:rutas_app/theme/app_theme.dart';

class InfoSistem extends StatelessWidget {
  const InfoSistem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: AppRoutes.menuOptions.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.brown[50],
            child: InkWell(
              splashColor: Colors.brown[100],
              onTap: (() {
                Navigator.pushNamed(
                    context, AppRoutes.menuOptions[index].route);
              }),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      AppRoutes.menuOptions[index].icon,
                      color: Color.fromARGB(255, 249, 221, 127),
                      size: 65,
                    ),
                    Text(
                      AppRoutes.menuOptions[index].name,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ]),
            ),
          );
        });
  }
}
