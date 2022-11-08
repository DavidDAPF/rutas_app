import 'package:flutter/material.dart';
import 'package:rutas_app/widgets/widgets.dart';

class AlertPages extends StatelessWidget {
  const AlertPages({Key? key}) : super(key: key);

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
                    'Alerts Pages',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                background: const Image(
                  image: AssetImage('assets/alerts.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: const TarjetasScreen(),
      ),
    );
  }
}
