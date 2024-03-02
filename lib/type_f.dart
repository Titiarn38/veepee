import 'package:flutter/material.dart';
import 'package:untitled/genre.dart';
import 'package:untitled/page_prod.dart';


class type_f extends StatefulWidget {
  const type_f({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<type_f> createState() => _type_fState();
}

class _type_fState extends State<type_f> {
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
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: FloatingActionButton(
                  heroTag: "fab1",
                  backgroundColor: Colors.white,
                  child: const Icon( Icons.arrow_back, color: Colors.black, size: 30, ),
                  onPressed: () {Navigator.push(
                      context, MaterialPageRoute(builder: (context) => genre(title: "title"))
                  );}
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
              ),
            ),
            Expanded(
              flex: 1,
              child: FloatingActionButton(
                  heroTag: "fab1",
                  backgroundColor: Colors.white,
                  child: const Icon( Icons.shopping_basket, color: Colors.black, size: 30, ),
                  onPressed: () {Navigator.push(
                      context, MaterialPageRoute(builder: (context) => genre(title: "title"))
                  );}
              ),
            ),
          ]
      ),
      body:
      Column(
        children: [
          Expanded(
              flex: 4,
              child:
              Container(
                child:
                Image(image: AssetImage("lib/assets/genre_back.png"),
                  fit: BoxFit.fitWidth,
                ),
              )
          ),
          Expanded(
              flex: 9,
              child:
              Container(
                child:
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12, right: 10, left: 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black)
                              ),),
                            child:
                            Text("Jusqu'au mardi 18/10 à 4h         ",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          ),
                          Spacer(),
                          Icon( Icons.share, ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const page_prod(title: "Produit")));
                      },child:
                    Padding(
                      padding: EdgeInsets.only(top: 16, right: 10, left: 10),
                      child: Column(
                        children: [
                          Row(
                          children: [
                            Text("Femme",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            Spacer(),
                            Icon( Icons.expand_more,
                              size: 32.0, ),
                          ],
                        ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Row(
                              children:
                              [Image(image: AssetImage("lib/assets/t_shirt.png")),
                              Container(width: 20,),
                              Text("T-shirts", style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 20),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Row(
                              children:
                              [Image(image: AssetImage("lib/assets/sweat.png")),
                                Container(width: 20,),
                                Text("Sweats", style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 20),)
                              ],
                            ),
                          ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                          child:Row(
                            children:
                            [Image(image: AssetImage("lib/assets/veste.png")),
                              Container(width: 20,),
                              Text("Vestes", style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 20),)
                            ],
                          ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                          child:Row(
                            children:
                            [Image(image: AssetImage("lib/assets/t_shirt.png")),
                              Container(width: 20,),
                              Text("Encore-shirt", style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 20),)
                            ],
                          ),
                      ),
                      ],
                      ),
                    ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const page_prod(title: "Produit")));
                      },child:
                    Padding(
                      padding: EdgeInsets.only(top: 16, right: 10, left: 10),
                      child: Row(
                        children: [
                          Text("Homme",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Spacer(),
                          Icon( Icons.keyboard_arrow_right,
                            size: 32.0, ),
                        ],
                      ),
                    ),
                    ),
                  ],
                ),
              )
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}