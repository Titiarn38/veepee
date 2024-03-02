import 'package:flutter/material.dart';
import 'package:untitled/page_prod.dart';
import 'produit.dart';
import 'validation_article.dart';

import 'main.dart';

class taille extends StatefulWidget {
  const taille({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<taille> createState() => _tailleState();
}

class _tailleState extends State<taille> {
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const produit(title: "Nos tailles")));
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                    makeSquare(Colors.white, 170, 50),
                    Text("GUESS"),
                    makeSquare(Colors.white, 140, 50),
                    Icon(Icons.shopping_bag),
                  ],
                ),
                Container(
                  height: 125,
                  width: 750,
                  color: Colors.grey,
                  child: Row(
                    children: [
                      Container(
                        height: 125,
                        width: 15,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: Image(image: AssetImage("lib/assets/Tee-shirt.png")),
                      ),
                      Column(
                          children: [
                            Container(
                              height: 25,
                              width: 5,
                            ),
                            Text("Tee_shirt - vert"),
                            Container(
                              height: 10,
                            ),
                            Text("17.90€", style: TextStyle(color: Colors.pink),),
                    ],
                    ),
                      Container(
                        width: 165,
                      ),
                      Container(
                        height: 20,
                        width: 35,
                        color: Colors.green,
                        child: Text("-54%", style: TextStyle(color: Colors.white),),
                      ),
                  ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 15,
          ),
          Container(
            height: 30,
            width: 300,
            child:
            Text("Faites votre sélection"),
          ),
          Row(
            children: [
              Icon(Icons.circle_outlined),
              Container(
                width: 20,
              ),
              Text("S  (FR)"),
            ],
          ),
          Container(
            height: 20,
          ),
          Row(
            children: [
              Icon(Icons.check_circle, color: Colors.pink,),
              Container(
                width: 20,
              ),
              Text("M  (FR) - Bientôt épuisé", style: TextStyle(color: Colors.pink),),
            ],
          ),
          Container(
            height: 20,
          ),
          Row(
            children: [
              Icon(Icons.circle_outlined),
              Container(
                width: 20,
              ),
              Text("L  (FR)"),
            ],
          ),
          Container(
            height: 20,
          ),
          Row(
            children: [
              Icon(Icons.circle_outlined),
              Container(
                width: 20,
              ),
              Text("XL  (FR)"),
            ],
          ),
          Expanded(
            flex: 1,
            child:
            Container(
              height: 250,
            ),
          ),
          Row(
            children: [
              Container(
                width: 25,
              ),
              Text("1"),
              Container(
                width: 15,
              ),
              Icon(Icons.keyboard_arrow_down_sharp),
              Container(
                width: 35,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const valid_art(title: "Validation article")));
                },
                child:
                Container(
                  height: 50,
                  width: 250,
                  color: Colors.pink,
                  alignment: Alignment.center,
                  child:
                  new Text("Ajouter au panier", style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ],
      ),


       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
