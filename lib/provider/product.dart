import 'package:flutter/material.dart';

enum Status{FavoriteScreen}
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
    required this.isFav,
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
   void changeStatus(String id,Status status){
      _products.firstWhere((element) => element.id==id).status=status;
      notifyListeners();
   }
    List<Product> filterTasks ({Status? status}){
     return _products.where((element) => element.status==status).toList();
    }
    void removeProduct (String id){
    _products.removeWhere((element) => element.id==id);
    print(_products.length);
    notifyListeners();
  }
   }