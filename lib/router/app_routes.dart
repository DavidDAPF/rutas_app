import 'package:flutter/material.dart';
import 'package:rutas_app/models/models.dart';
import 'package:rutas_app/screens/screens.dart';

class AppRoutes {
  //se importa la ruta inicial home
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     name: 'HomeScreen',
    //     screen: const HomeScreen(),
    //     icon: Icons.bubble_chart),
    MenuOption(
        route: 'page1',
        name: ' Informacion del Sistema',
        screen: const ListPages1Screen(),
        icon: Icons.format_list_numbered_outlined),
    MenuOption(
        route: 'page2',
        name: 'Usuarios',
        screen: const ListPages2Screen(),
        icon: Icons.people_alt),
    MenuOption(
        route: 'alert',
        name: 'SSH',
        screen: const AlertPages(),
        icon: Icons.key),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'page1': (context) => const ListPages1Screen(),
  //   'page2': (context) => const ListPages2Screen(),
  //   'alert': (context) => const AlertPages(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertPages(),
    );
  }
}
