import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/product.dart';
import '../widget/manage_widget.dart';
class ManageProduct extends StatelessWidget {
  const ManageProduct({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _products=Provider.of<Products>(context).filterTasks();
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Product'),
        actions:<Widget>[
          Padding(padding: EdgeInsets.only(right: 2),
          child: GestureDetector(
            onTap: ()=>Navigator.pushNamed(context, 'add_product'),
           child: Icon(Icons.add),
          ),
          )
        ]
      ),
      body:
       ListView.separated(
         itemBuilder: (ctx, index)=>ManageWidget(
           _products[index].id,
           _products[index].title,
           _products[index].description,
           _products[index].imgUrl,
           _products[index].price,
           _products[index].isFav,
           _products[index].status,
           ),
       separatorBuilder: (ctx, index)=>Divider(thickness: 2, height: 0,),
       itemCount:  _products.length,)
    
    );
      
    
  }
}