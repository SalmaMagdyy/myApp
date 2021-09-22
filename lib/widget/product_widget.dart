import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/product.dart';
import '../screen/description.dart';
class ProductWidget extends StatelessWidget {
  final String id, title, description, imgUrl;
  final double price;
  final bool isFav;
  final Status? status;
  const ProductWidget(this.id,this.title,this.description,this.imgUrl,this.price,this.isFav,this.status, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GridTile(
        header: GridTileBar(
          backgroundColor: Colors.black54,
          trailing: IconButton( 
            iconSize: 30,
            icon: Icon(isFav? Icons.favorite:Icons.favorite_border),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 150),
            color: Theme.of(context).accentColor,
            onPressed: () =>Provider.of<Products>(context,listen: false).changeStatus(id,Status.FavoriteScreen),
          ),
        ),
        
        child:GestureDetector(
          onTap:(){Navigator.of(context).push(MaterialPageRoute(builder:(ctx)=>Description(id) ));},
          child:Image.network(imgUrl),
    
        )
          ,
        footer:GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(title,
            textAlign: TextAlign.center,
            textScaleFactor: 1.5,
          ),
        ),
    
        ),
    );
      
    
  }
}