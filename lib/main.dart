// ignore_for_file: non_constant_identifier_names, unused_local_variable, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: ScrollBody()),
    );
  }
}

class ScrollBody extends StatefulWidget {
  @override
  State<ScrollBody> createState() => _ScrollBody();
}

class _ScrollBody extends State<ScrollBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: listeData(),
      ),
    );
  }

  List<Widget> listeData() {
    List<Widget> liste_data = [];
    int taille_array = data_model.length;

    for (int preuve = 0; preuve < taille_array; preuve++) {
      Column data_column = new Column(
        children: [
          Text(data_model[preuve]['titre']),
          Text(data_model[preuve]['texte']),
          Text(data_model[preuve]['auteur']),
        ],
      );
      liste_data.add(data_column);
    }

    return liste_data;
  }
}
