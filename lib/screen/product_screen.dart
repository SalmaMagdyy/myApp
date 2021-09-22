
import 'package:flutter/material.dart';
import 'package:project/provider/product.dart';
import 'package:provider/provider.dart';
import '../provider/product.dart';
import '../widget/product_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _products=Provider.of<Products>(context).filterTasks();
    return GridView.builder(
    	gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
	    crossAxisSpacing: 5,
	    mainAxisSpacing: 5,
	    crossAxisCount: 2,
	),
	itemBuilder: (context, index) =>ProductWidget(_products[index].id,
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
    
    
