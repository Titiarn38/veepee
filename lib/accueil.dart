import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/genre.dart';
import 'package:untitled/maison.dart';


class accueil extends StatefulWidget {
  const accueil({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<accueil> createState() => _accueilState();
}

class _accueilState extends State<accueil> {
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
      body:
          Column(
            children:[
              Expanded(
                flex: 2,
                child:
                Container(
                  decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage("lib/assets/acc_back.png"),
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
                                flex:1,
                                child: Align(
                                    alignment: AlignmentDirectional.topStart,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Icon( Icons.menu, color: Colors.white, )))),
                            Expanded(
                              flex: 4,
                                child: Image(image: AssetImage("lib/assets/logo.png"))),
                            Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Icon( Icons.search, color: Colors.white, )),
                                    Icon( Icons.shopping_basket, color: Colors.white, ),
                                  ],
                                ),)
                          ]
                        ),
                      ),
                      Container(
                        height: 30,
                          child:
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children:[
                              Container(width: 10,),
                              Text('Accueil',
                                style: TextStyle(color: Colors.white,
                                    fontSize: 20),),
                              Container(width: 15,),
                              Text('Mode',
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 20)),
                              Container(width: 15,),
                              Container(
                                  child:
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const maison(title: "Maison")));
                                    },child:
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
                            ],),
                      )
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
                      Text("NOUVEAUTE DU JOUR", style: TextStyle(
                      fontSize: 40)),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20, top: 6),
                        child: Text("Les ventes qui ouvrent aujourd'hui", style: TextStyle(
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
                              child: Image(image: AssetImage("lib/assets/categ1.png"),
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
                              child: Image(image: AssetImage("lib/assets/categ2.png"),
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
                              child: Image(image: AssetImage("lib/assets/categ1.png"),
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
                              child: Image(image: AssetImage("lib/assets/categ2.png"),
                                fit: BoxFit.fill,)
                          ),
                          ),
                        ],
                      )
                    ],
                  )),
                )

          ]

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.


      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

