import 'package:flutter/material.dart';
class EditProduct extends StatelessWidget {
  const EditProduct({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Product'),
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
            helperText: 'title',
            hintText: 'shoes',
          ),
        ),
        SizedBox(height: 10,),
        TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration( 
            border: OutlineInputBorder(),
            helperText: 'price',
            hintText: '150 LE',
          ),),
           SizedBox(height: 10,),
        TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            helperText: 'Description',
            hintText: 'Any Description',
            
           
          ),),
           SizedBox(height: 10,),
        TextField(
          keyboardType: TextInputType.url,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            helperText: 'Image URL',
            hintText:  'https://media.istockphoto.com/photos/running-shoes-picture-id1249496770?b=1&k=6&m=1249496770&s=170667a&w=0&h=9uttCAghGWpQC9aNxH7B50vsahNUHFL49IpI7J0Mxug=',
          ),),
           SizedBox(height: 10,),
      ],) ,
   ));
  }
}