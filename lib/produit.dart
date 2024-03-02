import 'package:flutter/material.dart';
import 'package:untitled/taille.dart';
import 'package:untitled/page_prod.dart';

import 'main.dart';

class produit extends StatefulWidget {
  const produit({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<produit> createState() => _produitState();
}

class _produitState extends State<produit> {
  int _counter = 0;

  Container makeSquare(Color color,double largeur,double hauteur) {
    return Container(
      width: largeur,
      height: hauteur,
      color: color,
    );
  }


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body:
      ListView(
        scrollDirection: Axis.vertical,
        children: [
        Container(
          child:
          Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const page_prod(title: "Nos produits")));
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  makeSquare(Colors.white, 170, 50),
                  Text("GUESS"),
                  makeSquare(Colors.white, 115, 50),
                  Icon(Icons.share),
                  Icon(Icons.shopping_bag),
                ],
              ),
              Container(
                height: 300,
                width: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      child: Image(image: AssetImage("lib/assets/Tee-shirt.png"),
                        fit: BoxFit.fill,),
                    ),
                    Container(
                      height: 300,
                      width: 300,
                      child: Image(image: AssetImage("lib/assets/Tee-shirt2.jpg"),
                        fit: BoxFit.fill,),
                    ),
                    Container(
                      height: 300,
                      width: 300,
                      child: Image(image: AssetImage("lib/assets/Tee-shirt3.jpg"),
                        fit: BoxFit.fill,),
                    ),
                  ],
                ),
              ),
              Container(
                child:
                Row(
                  children: [
                    makeSquare(Colors.white, 170, 50),
                    Icon(Icons.circle),
                    Icon(Icons.circle_outlined),
                    Icon(Icons.circle_outlined),
                  ],
                ),
              ),
              Container(
                child:
                Text("T-shirt - vert"),
              ),
              Container(
                child:
                Column(
                  children: [
                    Row(
                      children: [
                        new Text("17,99€", style: TextStyle(color: Colors.pink),),
                        makeSquare(Colors.white, 300, 50),
                        Container(
                          height: 20,
                          width: 35,
                          color: Colors.green,
                          child:
                          new Text("-54%", style: TextStyle(color: Colors.white),),

                        ),
                      ],
                    ),

                    Text("Payez cet article en 3x ou 4x à partir de 30€"),
                    GestureDetector(
                    onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const taille(title: "Validation article")));
                    },
                    child:
                    Container(
                      height: 50,
                      width: 350,
                      color: Colors.pink,
                      alignment: Alignment.center,
                      child:
                      new Text("Sélectionner un modèle", style: TextStyle(color: Colors.white),),
                    ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}