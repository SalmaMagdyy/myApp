import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/product.dart';
class ProductWidget extends StatelessWidget {
  final String id, title, description, imgUrl;
  final double price;
  final bool isFav;
  final Status? status;
  const ProductWidget(this.id,this.title,this.description,this.imgUrl,this.price,this.isFav,this.status, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      header: GridTileBar(
        backgroundColor: Colors.black54,
        trailing: IconButton( 
          iconSize: 30,
          icon: Icon(Icons.favorite_border_outlined),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 150),
          color: Theme.of(context).accentColor,
          onPressed: () =>Provider.of<Products>(context).changeStatus(id,Status.FavoriteScreen),
        ),
      ),
    
      child: Image.network(imgUrl) ,
      footer:GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(title,
          textAlign: TextAlign.center,
          textScaleFactor: 1.5,
        ),
      ),

      );
      
    
  }
}