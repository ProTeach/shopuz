import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopuz/models/Cart.dart';
import 'package:shopuz/models/Product.dart';
import 'package:shopuz/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

        ChangeNotifierProvider<ProductDataProvider>(
          create: (context) => ProductDataProvider(),
          ),
        ChangeNotifierProvider<CartDateProvider>(
          create: (context) => CartDateProvider(),
          ),
      ],
          child: MaterialApp(
        title: 'Demo App',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          backgroundColor: Colors.white,
          textTheme: GoogleFonts.marmeladTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
