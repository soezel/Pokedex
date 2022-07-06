import 'package:flutter/material.dart';

import 'widget/main_drawer_widget.dart';

void main() => runApp(const MaterialApp(
    title: 'Pokedex', home: HomePage(), debugShowCheckedModeBanner: false));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
        backgroundColor: Colors.green[100],
      ),
      body: const Center(child: Text('Welcome to the custom Pokedex! ｡◕ ‿ ◕｡')),
      drawer: const MainDrawer(),
    );
  }
}
