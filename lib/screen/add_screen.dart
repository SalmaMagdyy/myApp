import 'package:flutter/material.dart';
class AddProduct extends StatelessWidget {
  const AddProduct({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
        actions:<Widget>[
          Padding(padding: EdgeInsets.only(right: 2),
          child: GestureDetector(
            onTap: (){},
           child: Icon(Icons.copy),
          ),
          )
        ]
      ),
      body:Padding(padding:const EdgeInsets.all(8.0) ,
      child:ListView(children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Title',
          ),
        ),
        SizedBox(height: 10,),
        TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration( 
            border: OutlineInputBorder(),
            labelText: 'Price',
          ),),
           SizedBox(height: 10,),
        TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Description',
          ),),
           SizedBox(height: 10,),
        TextField(
          keyboardType: TextInputType.url,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Image URL',
          ),),
           SizedBox(height: 10,),
      ],) ,
   ));
  }
}