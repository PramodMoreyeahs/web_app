import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:web/home/model/ItemData.dart';
class HomeListTile extends StatelessWidget {
  ItemData _data;
   HomeListTile(this._data,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.network(
         '${_data.imageurl}.png',width: 150,height: 150,
          ),
          Text('${_data.bikeName}',style: TextStyle(fontSize: 10),)
        ],
      ),
    );
  }
}
