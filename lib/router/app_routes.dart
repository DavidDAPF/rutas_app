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
        screen: const InfoSistemaScreen(),
        icon: Icons.format_list_numbered_outlined),
    MenuOption(
        route: 'page2',
        name: 'Usuarios',
        screen: const AdminUsersScreen(),
        icon: Icons.people_alt),
    MenuOption(
        route: 'alert',
        name: 'alertas',
        screen: const AlertPages(),
        icon: Icons.info_outline),
    MenuOption(
        route: 'forlderScreen',
        name: 'Carpetas y directorios',
        screen: const FolderScreen(),
        icon: Icons.folder),
    MenuOption(
        route: 'reboot',
        name: 'Apagado o reinicio',
        screen: const RebootScreen(),
        icon: Icons.restart_alt),
    MenuOption(
        route: 'searchFiles',
        name: 'Buscar Archivos',
        screen: const SearchFilesScreen(),
        icon: Icons.screen_search_desktop_outlined),
    MenuOption(
        route: 'disk',
        name: 'Espacio en Disco',
        screen: const SearchFilesScreen(),
        icon: Icons.sd_storage),
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
