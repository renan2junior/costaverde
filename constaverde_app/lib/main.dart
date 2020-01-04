import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final base_menu_image = "assets/images/menu";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("$base_menu_image/deck.jpg"),
                fit: BoxFit.cover
              )
            ),
            width: size.width,
            height: size.height,
            padding: EdgeInsets.all(16),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.yellow,
                  margin: EdgeInsets.only(bottom: 40),
                ),
                _buildRow(),
              ],
            )
          ),
        ),
      ),
    );
  }

  Row _buildRow() {
    double _tamanho_imagem = 130;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              "$base_menu_image/menu_ilha.png",
              width: _tamanho_imagem,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "$base_menu_image/menu_angra.png",
              width: _tamanho_imagem,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "$base_menu_image/menu_lanchas.png",
              width: _tamanho_imagem,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "$base_menu_image/menu_reservas.png",
              width: _tamanho_imagem,
              fit: BoxFit.cover,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              "$base_menu_image/menu_parati.png",
              width: _tamanho_imagem,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "$base_menu_image/menu_mangaratiba.png",
              width: _tamanho_imagem,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "$base_menu_image/menu_top.png",
              width: _tamanho_imagem,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "$base_menu_image/menu_experiencias.png",
              width: _tamanho_imagem,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ],
    );
  }

  _gridButtons(context) {
    const menu = [
      "Ilha Grande",
      "Parati",
      "Angra dos Reis",
      "Mangaratiba",
      "Lanchas",
      "Top 5",
      "Reservas",
      "Experiencia"
    ];

    return GridView.builder(
        itemCount: menu.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          var item = menu[index];
          return Text(item);
        });
  }
}
