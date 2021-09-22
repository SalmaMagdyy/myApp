import 'package:flutter/material.dart';
import 'package:project/provider/product.dart';
import 'package:provider/provider.dart';
import '../provider/product.dart';

class Description extends StatelessWidget {
  final String id;
  const Description(this.id,{ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final productsId=Provider.of<Products>(context,listen: false).findById(id);
    return Scaffold(
      appBar: AppBar(title:Text(productsId.title),),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              child: Image.network(productsId.imgUrl,fit: BoxFit.cover,width: double.infinity,),
          
            ),
            SizedBox(height: 20,),
            Text('${ productsId.price.round()}',style: TextStyle(color: Colors.black,fontSize: 20),),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(productsId.description, textAlign: TextAlign.center,softWrap: true,))
      
          ],
        ),
      ),
    );
  }
}