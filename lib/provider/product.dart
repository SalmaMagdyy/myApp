import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

enum Status{FavoriteScreen,}
class Product{
  String id, title, description, imgUrl;
  double price;
  bool isFav;
  Status? status;
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.imgUrl,
    required this.price,
    this.isFav=false,
    this.status,
  

  });

}
class Products with ChangeNotifier{
  List<Product> _products = [
    Product(
      id: '1',
      title: 'blue running shoe',
      price: 150,
      description: 'Any Description',
      imgUrl:
          'https://media.istockphoto.com/photos/running-shoes-picture-id1249496770?b=1&k=6&m=1249496770&s=170667a&w=0&h=9uttCAghGWpQC9aNxH7B50vsahNUHFL49IpI7J0Mxug=',
      isFav: false,
    ),
    Product(
      id: '2',
      title: 'green running shoe',
      price: 100,
      description: 'Any Description',
      imgUrl:
        "https://media.istockphoto.com/photos/modern-sport-shoes-picture-id623270836?k=20&m=623270836&s=612x612&w=0&h=C0WdoMeoHYugJy8mVgrTl8p1U8DltiZ25AzzjGY05GA=",
      isFav: true,
    ),
    
  ];
  List<Product> filterTasks ({Status? status}){
     return _products.where((element) => element.status==status).toList();
    }
      Future <void> addTask(
      String title,
      String description,
      String imgUrl,
      double price,
    )async{
      var url=Uri.parse('https://final-fbf07-default-rtdb.firebaseio.com/products.json');
      var response=await http.post( url,
      body: json.encode(
        {
        'title':title,
         'description':description,
         'imgUrl':imgUrl,
         'price':price.toString(),
      })
      );
      print(response.body);
      _products.add(
       Product(
        id:json.decode(response.body)['name'],
        title: title,
        description: description,
        imgUrl: imgUrl,
        price: price));
        notifyListeners();
    }
    void removeProduct (String id){
    _products.removeWhere((element) => element.id==id);
    print(_products.length);
    notifyListeners();
  }
  void changeStatus(String id,Status status){
      _products.firstWhere((element) => element.id==id).status=status;
      notifyListeners();
   }
   Product findById (String id){
      return _products.firstWhere((element) => element.id==id);
      
    }  
   void toggleFavStatus(bool isFav){
      _products.where((element) => isFav=! isFav);
      notifyListeners();
      }
  
    
    
  
   }
