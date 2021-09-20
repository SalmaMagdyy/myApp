import 'package:flutter/material.dart';
import 'package:project/provider/product.dart';
import 'package:project/screen/add_screen.dart';
import 'package:provider/provider.dart';
import 'package:project/screen/home_screen.dart';
import 'provider/product.dart';
//home screen
import './screen/home_screen.dart';
import './screen/manage_screen.dart';
import './screen/add_screen.dart';
import './screen/edit_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(value: Products(),
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.pink.shade100,
        accentColor: Colors.pink,
        ),
        //home:HomeScreen(),
        routes: {
          '/':(_)=> HomeScreen(),
          'm_product': (context)=>ManageProduct(),
          'add_product':(context)=>AddProduct(),
          'edit_product':(context)=>EditProduct(),

        },
      ),
    );}}