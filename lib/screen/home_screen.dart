import 'package:flutter/material.dart';
//screen
import 'product_screen.dart';
import 'favorite_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Map<String, dynamic>> _pages;

  int _currentIndex = 0;
  void _changepage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
 
  @override
  void initState() {
    _pages = [
      {
        'title': 'Product',
        'page': ProductScreen()
      },
      {'title': 'Favorite', 'page': FavoriteScreen()}
    ];
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_currentIndex]['title']),
        actions:_currentIndex==0 ?<Widget>[
          Padding(padding: EdgeInsets.only(right: 2),
          child: GestureDetector(
            onTap: ()=>Navigator.pushNamed(context, 'm_product'),
           child: Icon(Icons.card_giftcard),
          ),
          )


        ]:null),
      body: _pages[_currentIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _changepage,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.pink,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Product'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite')
          ]),
    );
  }
}
