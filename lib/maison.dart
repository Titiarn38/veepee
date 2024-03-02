import 'package:flutter/material.dart';
import 'package:untitled/accueil.dart';
import 'package:untitled/genre.dart';
import 'package:untitled/page_prod.dart';
import 'package:untitled/produit.dart';
import 'package:untitled/validation_article.dart';
import 'package:untitled/produit.dart';

class maison extends StatefulWidget {
  const maison({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<maison> createState() => _maisonState();
}

class _maisonState extends State<maison> {
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
      Column(
        children: [
          Expanded(
            flex: 2,
            child:
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/fond_maison.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Icon(
                                      Icons.menu, color: Colors.white,)))),
                        Expanded(
                            flex: 4,
                            child: Image(
                                image: AssetImage("lib/assets/logo.png"))),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.search, color: Colors.white,)),
                              Icon(Icons.shopping_basket,
                                color: Colors.white,),
                            ],
                          ),)
                      ],
                    ),
                  ),


                  Container(
                    height: 30,
                    child:
                    ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(width: 10,),
                        Container(
                          child:
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>
                                  const accueil(title: "Accueil")));
                            }, child:
                          Container(
                            child: Text('Accueil',
                                style: TextStyle(color: Colors.white,
                                    fontSize: 20)),
                          ),
                          ),
                        ),
                        Container(width: 15,),
                        Text('Mode',
                            style: TextStyle(color: Colors.white,
                                fontSize: 20)),
                        Container(width: 15,),
                        Container(
                          child:
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>
                                  const maison(title: "Maison")));
                            }, child:
                          Container(
                            child: Text('Maison',
                                style: TextStyle(color: Colors.white,
                                    fontSize: 20)),
                          ),
                          ),
                        ),
                        Container(width: 15,),
                        Text('Beauté',
                            style: TextStyle(color: Colors.white,
                                fontSize: 20)),
                        Container(width: 15,),
                        Text('Voyage',
                            style: TextStyle(color: Colors.white,
                                fontSize: 20)),
                        Container(width: 15,),
                        Text('Enfant',
                            style: TextStyle(color: Colors.white,
                                fontSize: 20)),
                        Container(width: 15,),
                        Text('Sport',
                            style: TextStyle(color: Colors.white,
                                fontSize: 20)),
                        Container(width: 15,),
                        Text('Loisir',
                            style: TextStyle(color: Colors.white,
                                fontSize: 20)),
                      ],
                    ),
                  ),

                  Container(
                    height: 17, width: 350, color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Recherchez une marque, un produit...",
                      ),
                    ),
                  ),

                  Container(
                    height: 30,
                    child:
                    ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(width: 10,),
                        Container(
                          child:
                          Container(
                            width: 130,
                            decoration: BoxDecoration(border: Border.all(color: Colors.purple),
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(40.0),
                                  topRight: const Radius.circular(40.0),
                                  bottomLeft: const Radius.circular(40.0),
                                  bottomRight: const Radius.circular(40.0),
                                )),

                            child: Text('Art de la table',
                                style: TextStyle(color: Colors.purple,
                                    fontSize: 20)),
                          ),
                        ),
                        Container(width: 15,),

                        Container(
                          width: 170,
                          decoration: BoxDecoration(border: Border.all(color: Colors.purple),
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(40.0),
                                topRight: const Radius.circular(40.0),
                                bottomLeft: const Radius.circular(40.0),
                                bottomRight: const Radius.circular(40.0),
                              )),
                          child: Text('Bricolage & Jardin',
                              style: TextStyle(color: Colors.purple,
                                  fontSize: 20)),
                        ),
                        Container(width: 15,),
                        Container(
                          child:
                          Container(
                            width: 105,
                            decoration: BoxDecoration(border: Border.all(color: Colors.purple),
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(40.0),
                                  topRight: const Radius.circular(40.0),
                                  bottomLeft: const Radius.circular(40.0),
                                  bottomRight: const Radius.circular(40.0),
                                )),
                            child: Text('Décoration',
                                style: TextStyle(color: Colors.purple,
                                    fontSize: 20)),
                          ),
                        ),
                        Container(width: 15,),
                        Container(
                          width: 155,
                          decoration: BoxDecoration(border: Border.all(color: Colors.purple),
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(40.0),
                                topRight: const Radius.circular(40.0),
                                bottomLeft: const Radius.circular(40.0),
                                bottomRight: const Radius.circular(40.0),
                              )),
                          child: Text('Électro-ménager',
                              style: TextStyle(color: Colors.purple,
                                  fontSize: 20)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


      Expanded(
            flex: 5,
            child:
            Container(
                child:
                ListView(
                  children: [
                    Text("L'AMBIANCE DU JOUR", style: TextStyle(
                        fontSize: 40)),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, top: 6),
                      child: Text("LAGUIOLE FAIT L’ÉVÈNEMENT", style: TextStyle(
                          fontSize: 20)),
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const genre(title: "Produit")));
                          },child:
                        Container(
                            height: 150,
                            child: Image(image: AssetImage("lib/assets/image_cuisine1.png"),
                              fit: BoxFit.fill,)
                        ),
                        ),
                        Container(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const genre(title: "Produit")));
                          },child:
                        Container(
                            height: 250,
                            child: Image(image: AssetImage("lib/assets/image_cuisine.png"),
                              fit: BoxFit.fill,)
                        ),
                        ),
                        Container(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const genre(title: "Produit")));
                          },child:
                        Container(
                            height: 150,
                            child: Image(image: AssetImage("lib/assets/image_cuisine1.png"),
                              fit: BoxFit.fill,)
                        ),
                        ),
                        Container(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const produit(title: "Produit")));
                          },child:
                        Container(
                            height: 250,
                            child: Image(image: AssetImage("lib/assets/image_cuisine.png"),
                              fit: BoxFit.fill,)
                        ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
      ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
