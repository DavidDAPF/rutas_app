import 'package:flutter/material.dart';
import '../router/app_routes.dart';
//import 'package:rutas_app/theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color.fromARGB(1, 205, 188, 241),
        body: GridView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: AppRoutes.menuOptions.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
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
                          color: Colors.brown[200],
                          size: 65,
                        ),
                        Text(
                          AppRoutes.menuOptions[index].name,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ]),
                ),
              );
            }));
  }
}
