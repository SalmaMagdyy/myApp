
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
    /* return  Center(
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child:InkWell(
          onTap: (){},
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(image: NetworkImage("https://media.istockphoto.com/photos/running-shoes-picture-id1249496770?b=1&k=20&m=1249496770&s=170667a&w=0&h=_SUv4odBqZIzcXvdK9rqhPBIenbyBspPFiQOSDRi-RI="),
),
            Positioned(
              bottom: 16,
              right: 16,
              left:16 ,
              child:Text('blue running shoes',
              style: TextStyle(
                backgroundColor: Colors.black,
                color: Colors.white,
                fontSize: 24,
              ),)
              )
          ],
        ),
        
      )
      )
      
    );
     */

                   
	
