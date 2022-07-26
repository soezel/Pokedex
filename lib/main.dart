import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon/screen/pokemon_screen.dart';
import 'dart:convert';

import 'widget/main_drawer_widget.dart';

void main() => runApp(const MaterialApp(
    title: 'Pokedex', home: HomePage(), debugShowCheckedModeBanner: false));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = Uri.parse(
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");

  // late PokeHub pokeHub;

  // @override
  // void initState() {
  //   super.initState();
  //   fetchData();
  // }

  // fetchData() async {
  //   var res = await http.get(url);
  //   var decodeJson = jsonDecode(res.body);
  //   pokeHub = PokeHub.fromJson(decodeJson);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
        backgroundColor: Colors.green[100],
      ),
      // body: GridView.count(
      //   crossAxisCount: 2,
      //   children: pokeHub!.pokemon!.map((poke) => const Card()).toList(),
      // ),
      body: const Center(child: Text('Welcome to the custom Pokedex! ｡◕ ‿ ◕｡')),
      drawer: const MainDrawer(),
    );
  }
}
