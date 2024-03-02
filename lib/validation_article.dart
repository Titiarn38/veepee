import 'package:flutter/material.dart';
import 'package:untitled/page_prod.dart';
import 'package:untitled/taille.dart';
import 'package:untitled/type_m.dart';

class valid_art extends StatefulWidget {
  const valid_art({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<valid_art> createState() => _valid_artState();
}

class _valid_artState extends State<valid_art> {
  int _counter = 0;

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

      body: Container(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const taille(title: "Nos produits")));
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child:
                    Expanded(child: Text ("1 produit",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),),),
                  Expanded(child: Text("Modifier",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.pink),),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: 10,),
                  Icon(Icons.local_shipping_rounded),
                  Container(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 150),
                    child: Text("livraison: 13 - 18 Octobre"),
                  ),
                ],
              ),

              Row(
                children: [
                  Container(
                    child: Image(image: AssetImage("lib/assets/Tee-shirt.png")),
                    height: 150,
                    width: 150,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("GUESS"),
                      Text("T-shirt - vert"),
                      Text("1 x Modèle M(FR)"),
                      Row(
                        children: [
                          Text("39,90€",
                            style: new TextStyle(decoration: TextDecoration.lineThrough),),
                          Text("17,99€"),
                          Container(
                            height: 20,
                            width: 35,
                            color: Colors.green,
                            child:
                            new Text("-54%", style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child:
                    Text ("Récapitulatif",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),),
                ],
              ),

              Row(
                children: [
                  Icon(Icons.wallet_giftcard),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child:
                    Expanded(child: Text ("Avez-vous un code promo ?",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, ),),),),
                  Expanded(child: Text("Modifier",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.pink),),
                  ),
                ],
              ),

              Container(
                height: 2,
                width: 500,
                color: Colors.grey,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                  ],
                ),
              ),



              Row(
                children: [
                  Expanded(child: Text ("Sous-total",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),),
                  Expanded(child: Text("17,99€",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
                  ),
                ],
              ),
              Row(
                children: [
                  Text ("Economisez 21,91€",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text ("Sous-total",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),),
                  Expanded(child: Text("17,99€",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child:
                    Expanded(child: Text ("Economisez 21,91€",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),),),),
                  Container(width: 50,),
                  Expanded(child: Text ("Sous-total",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),),),
                  Expanded(child: Text("17,99€", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
                  ),
                ],
              ),

              Container(
                width: 400,
                color: Colors.pink,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text ("Valider mon panier",
                        style: TextStyle(fontSize: 30,color: Colors.white ),),
                    ),
                  ],
                ),
              ),

              Center(
                child:
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text ("Les frais de livraison seront ajoutés à l'étape suivante",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, ),),),
              ),

            ],
          ),
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}