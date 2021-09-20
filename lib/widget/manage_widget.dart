import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import '../provider/product.dart';
class ManageWidget extends StatelessWidget {
  final String id, title, description, imgUrl;
  final double price;
  final bool isFav;
  final Status? status;
  const ManageWidget(this.id,this.title,this.description,this.imgUrl,this.price,this.isFav,this.status, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Slidable(
  actionPane: SlidableDrawerActionPane(),
  actionExtentRatio: 0.25,
  child: Container(
    color: Colors.white,
    child: ListTile(
      leading: CircleAvatar(
        radius: 30,
        child: FittedBox(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(imgUrl),
        )),
      ),
      title: Text(title),      
    ),),
  secondaryActions: <Widget>[
    IconSlideAction(
      caption: 'Edit',
      color: Colors.black45,
      icon: Icons.edit,
      onTap: ()=>Navigator.pushNamed(context, 'edit_product'),
    ),
    IconSlideAction(
      caption: 'Delete',
      color: Colors.red,
      icon: Icons.delete,
      onTap: () => Provider.of<Products>(context,listen: false).removeProduct (id),
    ),
    
  ],
);
  }
}