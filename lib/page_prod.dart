  import 'package:flutter/material.dart';
import 'package:untitled/produit.dart';
import 'package:untitled/type_m.dart';

  class page_prod extends StatefulWidget {
    const page_prod({super.key, required this.title});

    // This widget is the home page of your application. It is stateful, meaning
    // that it has a State object (defined below) that contains fields that affect
    // how it looks.

    // This class is the configuration for the state. It holds the values (in this
    // case the title) provided by the parent (in this case the App widget) and
    // used by the build method of the State. Fields in a Widget subclass are
    // always marked "final".

    final String title;

    @override
    State<page_prod> createState() => _page_prodState();
  }

  class _page_prodState extends State<page_prod> {

    Container makeSquare(){
      return Container(
        child: Column(
            children:[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 15),
                  child:
                  Container(
                    height: 140,
                    width: 140,
                    child:
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const produit(title: "Produit")));
                      },
                      child:
                      ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 140,
                            width: 140,
                            child: Image(image: AssetImage("lib/assets/Tee-shirt.png")),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            child: Image(image: AssetImage("lib/assets/Tee-shirt2.jpg")),
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            child : Image(image: AssetImage("lib/assets/Tee-shirt3.jpg")),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 15),
                child: Text("Nike - Sweat-shirt")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: Icon(Icons.circle, size: 12)),
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: Icon(Icons.circle_outlined, size: 12)),
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: Icon(Icons.circle_outlined, size: 12)),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text("15,99€",
                    style: TextStyle(
                      color: Colors.pinkAccent,
                    ),),
                    Text("34,90€",
                      style: new TextStyle(decoration: TextDecoration.lineThrough),)
                  ],
                ),
                Spacer(),
                Text("-54%",
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.green,
                ),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 10),
              child: Text("Achat express",
                style: TextStyle(
                    color: Colors.white,
                    background: Paint()
                      ..strokeWidth = 30.0
                      ..color = Colors.pinkAccent
                      ..style = PaintingStyle.stroke
                      ..strokeJoin = StrokeJoin.round
                ),),
            )
          ]
        ),

      );
    }

    void _incrementCounter() {
      setState(() {
        // This call to setState tells the Flutter framework that something has
        // changed in this State, which causes it to rerun the build method below
        // so that the display can reflect the updated values. If we changed
        // _counter without calling setState(), then the build method would not be
        // called again, and so nothing would appear to happen.

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
        body:ListView(
          children:[
            Expanded(
              flex: 1,
              child: Container(
                height: 30,
                decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black)
                ),),
                child:Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const type_m(title: "Nos tailles")));
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                    Spacer(),
                    Text("GUESS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        print("share");
                      },child: Icon( Icons.share),
                    ),
                    GestureDetector(
                      onTap: (){
                        print("panier");
                      },child: Padding(
                      padding: EdgeInsets.only(right: 15, left: 10),
                        child:
                    Icon( Icons.shopping_basket)),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 30,
                decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black)
                  ),),
                child: Row(
                  children:[
                    GestureDetector(
                      onTap: (){
                        print("1 item");
                      },child: Icon( Icons.crop_square),
                    ),
                    GestureDetector(
                      onTap: (){
                        print("liste");
                      },child: Icon( Icons.format_list_bulleted),
                    ),
                    Spacer(),
                    Text("Trier par"),
                    Text(" | "),
                    Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Text("Filtrer")),
                    ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                height: 800,
                child: GridView.count(
                    childAspectRatio: 0.55,
                    crossAxisCount: 2,
                      children: List.generate(10, (index) {
                  return
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: makeSquare()
                  );
                }),
                ),
              ),
            ),
          ]
        )
   // This trailing comma makes auto-formatting nicer for build methods.
      );
    }
  }