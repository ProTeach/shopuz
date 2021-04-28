import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - 85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            )

          ),
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: <Widget>[

              Container(
                child: ListTile(
                  title: Text( 
                  'Tetiklashtiruvchi ichimliklar',
                  style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '100 dan ortiq turdagi ichimliklar',
                    style: TextStyle(fontSize: 16),
                  
                  ),
                  trailing: Icon(Icons.panorama_horizontal),

                  ),
              ),

              Container(
                child: Text('Gorizontal kartalar yo\'yxati'),
                ),

                Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Kaktellar ro\'yxati'),
                ),

                Container(
                  child: Text('Kataloglar ro\'yxati'),
                )
              
            ],
          ),
        ),
      ),

      // -! Bottom Bar

    );
  }
}
