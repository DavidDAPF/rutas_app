import 'package:flutter/material.dart';

class CustomAppBarScreen extends StatelessWidget {
  final String title;
  final AssetImage image;

  const CustomAppBarScreen({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.brown[200],
      expandedHeight: 200,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Container(
          alignment: Alignment.bottomCenter,
          child: Text(
            this.title,
            style: TextStyle(fontSize: 15),
          ),
        ),
        background: Image(
          image: this.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
