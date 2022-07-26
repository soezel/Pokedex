import 'package:flutter/material.dart';

import '../widget/main_drawer_widget.dart';

class CustomGenScreen extends StatelessWidget {
  static const routeNmae = "/CustomGenScreen";
  const CustomGenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Gen'),
        backgroundColor: Colors.green[100],
      ),
      body: const Center(child: Text('Welcome to the custom Pokedex! ｡◕ ‿ ◕｡')),
      drawer: const MainDrawer(),
    );
  }
}
