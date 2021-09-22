import 'package:flutter/material.dart';
import 'package:project/provider/product.dart';
import 'package:provider/provider.dart';
class AddProduct extends StatefulWidget {
  const AddProduct({ Key? key }) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  var _titleController=TextEditingController();
  var _priceController=TextEditingController();
  var _descriptionController=TextEditingController();
  var _imgUrlController=TextEditingController();
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
          controller: _titleController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Title',
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          controller: _priceController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration( 
            border: OutlineInputBorder(),
            labelText: 'Price',
          ),),
           SizedBox(height: 10,),
        TextField(
          controller: _descriptionController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Description',
          ),),
           SizedBox(height: 10,),
        TextField(
          controller: _imgUrlController,
          keyboardType: TextInputType.url,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Image URL',
          ),),
           SizedBox(height: 10,),
           ElevatedButton(onPressed: (){Provider.of<Products>(context).addTask(
             _titleController.text, 
             _descriptionController.text,
             _imgUrlController.text,
            double.parse( _priceController.text));Navigator.pop(context);}, child: Text('Add Task'))
      ],) ,
   ));
  }
}