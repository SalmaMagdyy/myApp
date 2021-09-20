import 'package:flutter/material.dart';
import 'package:project/provider/product.dart';
import 'package:provider/provider.dart';
import '../widget/product_widget.dart';
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen ({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
   var _products=Provider.of<Products>(context).filterTasks(status: Status.FavoriteScreen);
   return GridView.builder(
    	gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
	    crossAxisSpacing: 1,
	    mainAxisSpacing: 1,
	    crossAxisCount: 2,
	),
	itemBuilder: (context, index) =>ProductWidget(
  _products[index].id,
  _products[index].title,
  _products[index].description, 
  _products[index].imgUrl,
  _products[index].price,
  _products[index].isFav,
  _products[index].status,
   ),
  itemCount: _products.length,);
  }
}
  