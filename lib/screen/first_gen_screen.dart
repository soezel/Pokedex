import 'package:flutter/material.dart';

import '../widget/main_drawer_widget.dart';

class FirstGenScreen extends StatelessWidget {
  static const routeName = "/FirstGenScreen";
  const FirstGenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('first Gen'),
          backgroundColor: Colors.green[100],
        ),
        drawer: const MainDrawer(),
        // body: const Center(child: Text('Welcome to the custom Pokedex! ｡◕ ‿ ◕｡')),
        body: GridView.builder(
          itemCount: 9,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 10.0 / 10.0,
            crossAxisCount: 3,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(5),
              child: Card(
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        'gif/Bulbasaur.gif',
                        height: 81.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Bulbasaur',
                        style: TextStyle(fontSize: 18.0, color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
